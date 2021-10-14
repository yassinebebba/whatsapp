from .models import CustomUser
from rest_framework import serializers


class CustomUserSerializers(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = CustomUser
        fields = ['url', 'username', 'phone_number']
