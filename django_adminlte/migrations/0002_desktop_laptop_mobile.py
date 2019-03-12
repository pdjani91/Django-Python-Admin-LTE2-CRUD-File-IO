# Generated by Django 2.1.5 on 2019-02-04 10:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('django_adminlte', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Desktop',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('device_type', models.CharField(max_length=100)),
                ('price', models.IntegerField()),
                ('status', models.CharField(default='SOLD', max_length=10)),
                ('issues', models.CharField(default='No Issues', max_length=100)),
            ],
            options={
                'db_table': 'Desktop',
            },
        ),
        migrations.CreateModel(
            name='Laptop',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('device_type', models.CharField(max_length=100)),
                ('price', models.IntegerField()),
                ('status', models.CharField(default='SOLD', max_length=10)),
                ('issues', models.CharField(default='No Issues', max_length=100)),
            ],
            options={
                'db_table': 'laptop',
            },
        ),
        migrations.CreateModel(
            name='Mobile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('device_type', models.CharField(max_length=100)),
                ('price', models.IntegerField()),
                ('status', models.CharField(default='SOLD', max_length=10)),
                ('issues', models.CharField(default='No Issues', max_length=100)),
            ],
            options={
                'db_table': 'Mobile',
            },
        ),
    ]
