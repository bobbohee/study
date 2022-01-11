# Generated by Django 3.2 on 2022-01-11 02:29

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='PayPlan',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20)),
                ('price', models.IntegerField()),
                ('updated_at', models.DateField(auto_now=True)),
                ('create_at', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]
