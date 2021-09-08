from django.urls import path, include
from django.urls.resolvers import URLPattern
from ninja import NinjaAPI

api = NinjaAPI()


@api.get("/add")
def add(request, a: int, b: int):
    return {"result": a + b}


ninja_url = [
]
urlpatterns=[
]