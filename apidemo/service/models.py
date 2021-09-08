from django.db import models
from django.db.models.fields import URLField

from user.models import (
    User,
    Company,
    Requester,
    Provider
)

class ServiceCategory(models.Model):
    name = models.CharField(max_length=100, null=False)
    icon_url = URLField(max_length=2000)

    class Meta:
        db_table = 'service_categories'


class Service(models.Model):
    category = models.ForeignKey(ServiceCategory, on_delete=models.SET_NULL, null=True, default=None)
    name = models.CharField(max_length=100, null=False)
    icon_url = URLField(max_length=2000)
    
    class Meta:
        db_table = 'services'   


class ProvidingService(models.Model):
    service = models.ForeignKey(Service, on_delete=models.CASCADE)
    company = models.ForeignKey(Company, on_delete=models.CASCADE)
    etc_name = models.CharField(max_length=100, null=True)

    class Meta:
        db_table = 'providing_services'


class RequestingService(models.Model):
    service = models.ForeignKey(Service, on_delete=models.CASCADE)
    company = models.ForeignKey(Company, on_delete=models.CASCADE)
    etc_name = models.CharField(max_length=100, null=True)

    class Meta:
        db_table = 'requesting_services'


class Request(models.Model):
    company = models.ForeignKey(Company, on_delete=models.CASCADE)
    requester = models.ForeignKey(Requester, on_delete=models.CASCADE)
    detail = models.TextField()
    need_start = models.DateField()
    need_end = models.DateField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateField(auto_now=True)

    class Meta:
        db_table = 'requests'


class Provide(models.Model):
    company = models.ForeignKey(Company, on_delete=models.CASCADE)
    provider = models.ForeignKey(Provider, on_delete=models.CASCADE)
    detail = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateField(auto_now=True)
    
    class Meta:
        db_table = 'provides'
        

class ReferenceImageUrl(models.Model):
    request = models.ForeignKey(Request, on_delete=models.CASCADE, null=True, related_name='request_images')
    provide = models.ForeignKey(Provide, on_delete=models.CASCADE, null=True, related_name='provide_images')
    url = models.URLField(max_length=2000)
    
    class Meta:
        db_table = 'reference_image_urls'