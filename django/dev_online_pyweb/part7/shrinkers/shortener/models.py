from django.db import models

# Create your models here.

class PayPlan(models.Model):
    name = models.CharField(max_length=20) # max_length를 지정하지 않으면 오류 발생
    price = models.IntegerField()
    updated_at = models.DateField(auto_now=True)
    create_at = models.DateTimeField(auto_now_add=True)
