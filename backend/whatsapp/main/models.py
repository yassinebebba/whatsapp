from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User


class Message(models.Model):
    sender = models.ForeignKey(User, related_name='sender_set', on_delete=models.DO_NOTHING, null=False)
    receiver = models.ForeignKey(User, related_name='receiver_set', on_delete=models.DO_NOTHING, null=False)
    content = models.CharField(max_length=250, null=False)
    creation_date = models.DateTimeField(default=timezone.now, null=False)
    delivered = models.BooleanField(default=False, null=False)
    read = models.BooleanField(default=False, null=False)
    deleted = models.BooleanField(default=False, null=False)

    def __repr__(self):
        # return f'{self.sender.phone_number} - {self.receiver.phone_number}'
        return f'{self.sender.useername} -> {self.receiver.useername}'
