from django.contrib.auth.base_user import AbstractBaseUser
from django.contrib.auth.base_user import BaseUserManager
from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.contrib.auth.models import _user_has_perm
from django.contrib.auth.models import _user_has_module_perms
from random import randint
# typing
from typing import Union
from typing import List
from typing import Tuple


class CustomUserManager(BaseUserManager):
    def create_user(self, username, phone_number):
        if not username:
            return ValueError('User must have a username.')
        if not phone_number:
            return ValueError('User must have a phone number.')

        user = self.model(
            username=username,
            phone_number=phone_number
        )
        user.save(using=self._db)

        return user

    def create_superuser(self, username, phone_number):
        user = self.create_user(username, phone_number)

        user.is_staff = True
        user.is_admin = True

        user.save(using=self._db)

        return user


class CustomUser(AbstractBaseUser):
    class Meta:
        db_table = 'custom_user'

    username = models.CharField(max_length=30, null=False)
    phone_number = models.CharField(max_length=15, unique=True, null=False)
    password = None
    last_login = None
    creation_date = models.DateTimeField(default=timezone.now, null=False)
    is_active = models.BooleanField(default=False, null=False)
    is_staff = models.BooleanField(default=False, null=False)
    is_admin = models.BooleanField(default=False, null=False)

    objects = CustomUserManager()

    USERNAME_FIELD = 'phone_number'
    REQUIRED_FIELDS = ['username']

    @staticmethod
    def exists(phone_number: str) -> Union[Tuple['CustomUser', bool], Tuple[None, bool]]:
        try:
            return (CustomUser.objects.get(phone_number=phone_number), True)
        except:
            return (None, False)

    def has_perm(self, perm: str, obj=None) -> bool:
        if self.is_active and self.is_admin:
            return True
        return _user_has_perm(self, perm, obj)

    def has_perms(self, perms: List[str], obj=None) -> bool:
        if self.is_active and self.is_admin:
            return True
        return all(self.has_perm(perm) for perm in perms)

    def has_module_perms(self, app_label: str) -> bool:
        if self.is_active and self.is_admin:
            return True
        return _user_has_module_perms(self, app_label)

    def __repr__(self):
        return f'{self.username} - {self.phone_number}'


class OTP(models.Model):
    class Meta:
        db_table = 'otp'

    user = models.OneToOneField(CustomUser, on_delete=models.DO_NOTHING, null=False)
    otp_code = models.IntegerField(null=False)
    attempts = models.IntegerField(default=0, null=False)
    creation_date = models.DateTimeField(default=timezone.now, null=False)

    @staticmethod
    def create_otp(user):
        return OTP.objects.update_or_create(user=user, otp_code=randint(100000, 999999))


class Message(models.Model):
    class Meta:
        db_table = 'message'

    sender = models.ForeignKey(CustomUser, related_name='sender_set', on_delete=models.DO_NOTHING, null=False)
    recipient = models.ForeignKey(CustomUser, related_name='recipient_set', on_delete=models.DO_NOTHING, null=False)
    content = models.CharField(max_length=250, null=False)
    creation_date = models.DateTimeField(default=timezone.now, null=False)
    delivered = models.BooleanField(default=False, null=False)
    read = models.BooleanField(default=False, null=False)
    deleted = models.BooleanField(default=False, null=False)

    def __repr__(self):
        # return f'{self.sender.phone_number} - {self.recipient.phone_number}'
        return f'{self.sender.useername} ({self.sender.phone_number}) -> {self.recipient.useername} ({self.recipient.phone_number})'
