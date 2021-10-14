from rest_framework.viewsets import ModelViewSet
# from rest_framework.generics import CreateAPIView
# from rest_framework.response import Response
# from rest_framework.views import APIView
# from rest_framework import permissions
from .serializers import CustomUserSerializers
from .models import CustomUser
# import re

class CustomUserViewSet(ModelViewSet):
    """
    API to view and edit users
    """
    queryset = CustomUser.objects.all().order_by('-creation_date')
    serializer_class = CustomUserSerializers
