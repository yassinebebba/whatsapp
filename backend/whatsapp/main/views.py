from rest_framework.viewsets import ModelViewSet
from rest_framework.generics import CreateAPIView
from rest_framework.response import Response
from rest_framework import status
from .serializers import CustomUserSerializers
from .models import CustomUser
import re


class CustomUserViewSet(ModelViewSet):
    """
    API to view and edit users
    """

    queryset = CustomUser.objects.all().order_by('-creation_date')
    serializer_class = CustomUserSerializers


class RegistrationView(CreateAPIView):
    """
    API to register users
    """

    def post(self, request, *args, **kwargs):
        response: dict = {'details': 'success'}
        status_code: int = status.HTTP_200_OK
        if len(request.data) != 2:
            response['error'] = 'not allowed'
            response['details'] = 'fields `username` and `phone_number` are required'
            status_code = status.HTTP_406_NOT_ACCEPTABLE
        elif not re.search('^[a-zA-Z_]{3,30}$', request.data['username']):
            response['error'] = 'wrong information'
            response['details'] = 'field `username` must be between 3 and 30 letters'
            status_code = status.HTTP_406_NOT_ACCEPTABLE
        elif not re.search('^\+[0-9]{7,15}$', request.data['phone_number']):
            # concatenate the country code and the phone number before submission
            response['error'] = 'wrong information'
            response['details'] = 'field `phone_number` must not be empty'
            status_code = status.HTTP_406_NOT_ACCEPTABLE
        else:
            serializer = CustomUserSerializers(data=request.data)
            if serializer.is_valid():
                serializer.save()

        return Response(data=response, status=status_code)
