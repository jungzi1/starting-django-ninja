from phonenumber_field.modelfields import PhoneNumberField
from phonenumber_field.phonenumber import PhoneNumber

from model_utils.managers import InheritanceManager

from django.db import models
from django.contrib.auth.models import (
    AbstractBaseUser,
    BaseUserManager,
    PermissionsMixin,
    UserManager
)

class ProviderManager(BaseUserManager):
    def create_user(self, name, email, contact, company, password=None, **kwargs):
        contact = PhoneNumber.from_string(
            phone_number=contact, region='KR').as_e164
        user_type = UserType.objects.get(name='medical_staff')

        if not name:
            raise ValueError('User must have an name')

        if User.objects.filter(email=self.normalize_email(email)).exists():
            raise ValueError('Duplicate email')

        if User.objects.filter(phone_number=phone).exists():
            raise ValueError('Duplicate phone number')

        user = self.model(
            email = self.normalize_email(email),
            name=name,
            contact=contact,
            user_type = user_type,
            company=company,
            **kwargs
        )


class RequesterManager(BaseUserManager):
    def create_user(self, name, email, phone, center, password=None, **kwargs):
        phone = PhoneNumber.from_string(
            phone_number=phone, region='KR').as_e164
        job = JobType.objects.get(name='medical_staff')

        if not name:
            raise ValueError('User must have an name')

        if User.objects.filter(email=self.normalize_email(email)).exists():
            raise ValueError('Duplicate email')

        if User.objects.filter(phone_number=phone).exists():
            raise ValueError('Duplicate phone number')

        if self.filter(center=center).exists():
            raise ValueError('Duplicate Center')

        user = self.model(
            email = self.normalize_email(email),
            name=name,
            phone_number=phone,
            jobtype = job,
            center=center,
            **kwargs
        )



class UserType(models.Model):
    name = models.CharField(max_length=100, null=True)

    class Meta:
        db_table = 'user_types'


class Company(models.Model):
    name = models.CharField(max_length=50, null=True)
    address = models.CharField(max_length=100, null=True)
    telephone = models.CharField(max_length=50, null=True)

    class Meta:
        db_table = 'companies'


class Gender(models.Model):
    name = models.CharField(max_length=10, null=True)

    class Meta:
        db_table = 'genders'
        
        
class User(AbstractBaseUser, PermissionsMixin):
    user_type = models.ForeignKey(UserType, on_delete=models.SET_NULL, null=True, default=None)
    email = models.EmailField(unique=True, null=True, default=None)
    name = models.CharField(max_length=20, null=True)
    contact = PhoneNumberField(null=True, default=None)
    birth_date = models.DateField(null=True, default=None)
    gender = models.ForeignKey(Gender, on_delete=models.SET_NULL, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    is_active = models.BooleanField(default=False, null=True)

    objects = UserManager()
    child_tables = InheritanceManager()

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['name']

    class Meta:
        db_table = 'base_users'

    def __str__(self):
        return self.name

class Requester(User, PermissionsMixin):
    company = models.ForeignKey(Company, on_delete=models.SET_NULL, null=True)
    
    objects = RequesterManager()

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['company']

    class Meta:
        db_table = 'requesters'

    def __str__(self):
        return self.name


class Provider(User, PermissionsMixin):
    company = models.ForeignKey(Company, on_delete=models.SET_NULL, null=True)

    objects = ProviderManager()

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['company']

    class Meta:
        db_table = 'providers'

    def __str__(self):
        return self.name