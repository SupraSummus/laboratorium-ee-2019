# Generated by Django 2.2.3 on 2019-07-08 08:30

from django.db import migrations
import src.apps.main.blocks
import wagtail.core.blocks
import wagtail.core.fields
import wagtail.images.blocks


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0022_auto_20190705_1532'),
    ]

    operations = [
        migrations.AlterField(
            model_name='specializationpage',
            name='how_we_work',
            field=wagtail.core.fields.StreamField([('text', wagtail.core.blocks.CharBlock(template='projects/blocks/paragraph.html')), ('tiles_list', src.apps.main.blocks.HorizontalList(wagtail.core.blocks.StructBlock([('heading', wagtail.core.blocks.CharBlock()), ('image', wagtail.images.blocks.ImageChooserBlock())])))]),
        ),
        migrations.AlterField(
            model_name='specializationpage',
            name='how_we_work_en',
            field=wagtail.core.fields.StreamField([('text', wagtail.core.blocks.CharBlock(template='projects/blocks/paragraph.html')), ('tiles_list', src.apps.main.blocks.HorizontalList(wagtail.core.blocks.StructBlock([('heading', wagtail.core.blocks.CharBlock()), ('image', wagtail.images.blocks.ImageChooserBlock())])))], null=True),
        ),
        migrations.AlterField(
            model_name='specializationpage',
            name='how_we_work_pl',
            field=wagtail.core.fields.StreamField([('text', wagtail.core.blocks.CharBlock(template='projects/blocks/paragraph.html')), ('tiles_list', src.apps.main.blocks.HorizontalList(wagtail.core.blocks.StructBlock([('heading', wagtail.core.blocks.CharBlock()), ('image', wagtail.images.blocks.ImageChooserBlock())])))], null=True),
        ),
        migrations.AlterField(
            model_name='teamindexpage',
            name='our_values',
            field=wagtail.core.fields.StreamField([('description', src.apps.main.blocks.EERichTextBlock()), ('tiles_list', src.apps.main.blocks.HorizontalList(wagtail.core.blocks.StructBlock([('heading', wagtail.core.blocks.CharBlock()), ('image', wagtail.images.blocks.ImageChooserBlock())])))]),
        ),
        migrations.AlterField(
            model_name='teamindexpage',
            name='our_values_en',
            field=wagtail.core.fields.StreamField([('description', src.apps.main.blocks.EERichTextBlock()), ('tiles_list', src.apps.main.blocks.HorizontalList(wagtail.core.blocks.StructBlock([('heading', wagtail.core.blocks.CharBlock()), ('image', wagtail.images.blocks.ImageChooserBlock())])))], null=True),
        ),
        migrations.AlterField(
            model_name='teamindexpage',
            name='our_values_pl',
            field=wagtail.core.fields.StreamField([('description', src.apps.main.blocks.EERichTextBlock()), ('tiles_list', src.apps.main.blocks.HorizontalList(wagtail.core.blocks.StructBlock([('heading', wagtail.core.blocks.CharBlock()), ('image', wagtail.images.blocks.ImageChooserBlock())])))], null=True),
        ),
    ]
