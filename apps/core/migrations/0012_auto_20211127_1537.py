# Generated by Django 3.2.9 on 2021-11-27 15:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0011_saasplan_language'),
    ]

    operations = [
        migrations.AddField(
            model_name='saasplan',
            name='descr_1',
            field=models.CharField(default='TODO', max_length=200, verbose_name='descr_1'),
        ),
        migrations.AddField(
            model_name='saasplan',
            name='descr_2',
            field=models.CharField(default='TODO', max_length=200, verbose_name='descr_2'),
        ),
        migrations.AddField(
            model_name='saasplan',
            name='descr_3',
            field=models.CharField(default='TODO', max_length=200, verbose_name='descr_3'),
        ),
        migrations.AddField(
            model_name='saasplan',
            name='descr_4',
            field=models.CharField(default='TODO', max_length=200, verbose_name='descr_4'),
        ),
        migrations.AddField(
            model_name='saasplan',
            name='descr_caption',
            field=models.CharField(default='TODO', max_length=200, verbose_name='descr_caption'),
        ),
        migrations.AddField(
            model_name='saasplan',
            name='descr_target',
            field=models.CharField(default='TODO', max_length=200, verbose_name='descr_target'),
        ),
    ]
