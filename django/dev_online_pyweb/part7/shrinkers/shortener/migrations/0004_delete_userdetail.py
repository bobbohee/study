# Generated by Django 3.2 on 2022-01-14 01:16

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('shortener', '0003_alter_users_pay_plan'),
    ]

    operations = [
        migrations.DeleteModel(
            name='UserDetail',
        ),
    ]
