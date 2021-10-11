from django.contrib.auth.base_user import AbstractBaseUser
from django.contrib.auth.base_user import BaseUserManager
from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.contrib.auth.models import _user_has_perm
from django.contrib.auth.models import _user_has_module_perms

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
    username = models.CharField(max_length=30, null=False)
    phone_number = models.CharField(max_length=15, unique=True, null=False)
    password = None
    is_active = models.BooleanField(default=True, null=False)
    is_staff = models.BooleanField(default=False, null=False)
    is_admin = models.BooleanField(default=False, null=False)

    object = CustomUserManager()

    USERNAME_FIELD = 'phone_number'
    REQUIRED_FIELDS = ['username']

    def exists(self, phone_number: str) -> Union[Tuple['CustomUser', bool], Tuple[None, bool]]:
        try:
            return (CustomUser.object.get(phone_number=phone_number), True)
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


class Message(models.Model):
    sender = models.ForeignKey(CustomUser, related_name='sender_set', on_delete=models.DO_NOTHING, null=False)
    receiver = models.ForeignKey(CustomUser, related_name='receiver_set', on_delete=models.DO_NOTHING, null=False)
    content = models.CharField(max_length=250, null=False)
    creation_date = models.DateTimeField(default=timezone.now, null=False)
    delivered = models.BooleanField(default=False, null=False)
    read = models.BooleanField(default=False, null=False)
    deleted = models.BooleanField(default=False, null=False)

    def __repr__(self):
        # return f'{self.sender.phone_number} - {self.receiver.phone_number}'
        return f'{self.sender.useername} ({self.sender.phone_number}) -> {self.receiver.useername} ({self.receiver.phone_number})'
