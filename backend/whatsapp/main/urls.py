from django.urls import include, path
from rest_framework import routers
from .views import CustomUserViewSet
from .views import RegistrationView
from .views import OTPValidationView

router = routers.DefaultRouter()
router.register(r'', CustomUserViewSet)

urlpatterns = [
    path('', include(router.urls)),
    path(r'register', RegistrationView.as_view()),
    path(r'validate-otp', OTPValidationView.as_view()),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework'))
]
