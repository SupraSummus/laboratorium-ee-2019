from django.conf.urls import url

from src.apps.main import views

urlpatterns = [
    url(
        r'^contact-form/$',
        views.SendMailView.as_view(),
        name='send_mail'
    ),
    url(
        r'^thanks/$',
        views.SendMailSuccessView.as_view(),
        name='send_mail_done',
    ),
]
