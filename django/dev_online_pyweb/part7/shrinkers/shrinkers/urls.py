"""shrinkers URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from shortener.views import index, redirect_index, get_user

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', index, name='re_index'), # urls에 redirect로 넘어가는 매개변수와 같아야 함.
    path('redirect', redirect_index),
    path('get_user/<int:user_id>', get_user),
]
