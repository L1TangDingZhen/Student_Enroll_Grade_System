# Generated by Django 5.0.3 on 2024-04-28 09:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('back', '0005_course_available'),
    ]

    operations = [
        migrations.AddField(
            model_name='enrollment',
            name='semester',
            field=models.CharField(max_length=10, null=True),
        ),
    ]