from django.contrib import admin
from django.urls import path
from django.conf.urls import url
from qa.views import test

admin.autodiscover()


urlpatterns = [
    url(r'^login/.*$',  'qa.views.test'),
    url(r'^$',  'qa.views.test'),
    url(r'^ask/.*',  'qa.views.test'),
    url(r'^popular/.*',  'qa.views.test'),
    url(r'^new/',  'qa.views.test'),
    url(r'^question/(?P<id>[0-9]+)/$',  'qa.views.test'),
]
