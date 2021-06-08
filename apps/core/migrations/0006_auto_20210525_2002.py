# Generated by Django 3.2.2 on 2021-05-25 20:02

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0005_saasinstance_initial_password'),
    ]

    operations = [
        migrations.CreateModel(
            name='SaasContract',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('start_date', models.DateTimeField(null=True, verbose_name='start_date')),
                ('end_date', models.DateTimeField(null=True, verbose_name='end_date')),
                ('auto_renew', models.BooleanField(default=True, verbose_name='auto_renew')),
                ('customer', models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, related_name='core_saascontract_list', to='core.saascustomer')),
                ('instance', models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, related_name='core_saascontract_list', to='core.saasinstance')),
                ('plan', models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, related_name='core_saascontract_list', to='core.saasplan')),
            ],
            options={
                'db_table': 'contract',
            },
        ),
        migrations.DeleteModel(
            name='SaasContact',
        ),
    ]