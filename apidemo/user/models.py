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
    def create_user(self, name, email, contact, company, user_type, password=None, **kwargs):
        contact = PhoneNumber.from_string(
            phone_number=contact, region='KR').as_e164
        user_type = UserType.objects.get(name=user_type)

        if not name:
            raise ValueError('User must have an name')

        if User.objects.filter(email=self.normalize_email(email)).exists():
            raise ValueError('Duplicate email')

        if User.objects.filter(contact=contact).exists():
            raise ValueError('Duplicate phone number')

        user = self.model(
            email = self.normalize_email(email),
            name=name,
            contact=contact,
            user_type=user_type,
            company=company,
            **kwargs
        )

        user.set_password(password)
        user.save(using=self._db)


class RequesterManager(BaseUserManager):
    def create_user(self, name, email, contact, company, user_type, password=None, **kwargs):
        contact = PhoneNumber.from_string(
            phone_number=contact, region='KR').as_e164
        user_type = UserType.objects.get(name=user_type)

        if not name:
            raise ValueError('User must have an name')

        if User.objects.filter(email=self.normalize_email(email)).exists():
            raise ValueError('Duplicate email')

        if User.objects.filter(contact=contact).exists():
            raise ValueError('Duplicate phone number')

        user = self.model(
            email = self.normalize_email(email),
            name=name,
            contact=contact,
            user_type=user_type,
            company=company,
            **kwargs
        )

        user.set_password(password)
        user.save(using=self._db)


class UserType(models.Model):
    name = models.CharField(max_length=100, null=True)

    class Meta:
        db_table = 'user_types'


class CompanyCategory(models.Model):
    name = models.CharField(max_length=100, null=True)

    class Meta:
        db_table = 'company_categories'


class Company(models.Model):
    name = models.CharField(max_length=50, null=True)
    company_category = models.ForeignKey(CompanyCategory, on_delete=models.SET_NULL, null=True, default=None)
    address = models.CharField(max_length=100, null=True)
    contact = models.CharField(max_length=50, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    is_active = models.BooleanField(default=True)

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
    is_active = models.BooleanField(default=True)
    
    objects = RequesterManager()

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['company']

    class Meta:
        db_table = 'requesters'

    def __str__(self):
        return self.name


class Provider(User, PermissionsMixin):
    company = models.ForeignKey(Company, on_delete=models.SET_NULL, null=True)
    is_active = models.BooleanField(default=True)

    objects = ProviderManager()

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['company']

    class Meta:
        db_table = 'providers'

    def __str__(self):
        return self.name