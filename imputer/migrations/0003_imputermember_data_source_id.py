# Generated by Django 2.1.7 on 2019-03-28 01:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('imputer', '0002_auto_20190221_0055'),
    ]

    operations = [
        migrations.AddField(
            model_name='imputermember',
            name='data_source_id',
            field=models.CharField(default='', max_length=30),
        ),
    ]