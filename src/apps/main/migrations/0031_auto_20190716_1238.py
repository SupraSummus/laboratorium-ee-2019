# Generated by Django 2.2.3 on 2019-07-16 10:38

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailcore', '0041_group_collection_permissions_verbose_name_plural'),
        ('main', '0030_subpagemetric'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='footer',
            name='page',
        ),
        migrations.AddField(
            model_name='footer',
            name='site',
            field=models.OneToOneField(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='footer', to='wagtailcore.Site'),
        ),
        migrations.DeleteModel(
            name='RodoPassAdvert',
        ),
    ]
