from django.urls import include, path
from rest_framework import routers
from .views import CustomUserViewSet
from .views import RegistrationView
from .views import OTPValidationView
from .views import index
from .views import room

router = routers.DefaultRouter()
router.register(r'', CustomUserViewSet)

urlpatterns = [
    # path('', include(router.urls)),
    path('', index, name='index'),
    path('chat/<str:room_name>/', room, name='room'),
    path(r'register', RegistrationView.as_view()),
    path(r'validate-otp', OTPValidationView.as_view()),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework'))
]
