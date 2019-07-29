from django.contrib import admin
from django.urls import path
from django.conf.urls import url, include
from qa.views import test

admin.autodiscover()


urlpatterns = [
    url(r'^login/.*$',  'qa.views.test', include('qa.urls')),
    url(r'^$',  'qa.views.test', include('qa.urls')),
    url(r'^ask/.*',  'qa.views.test', include('qa.urls')),
    url(r'^popular/.*',  'qa.views.test', include('qa.urls')),
    url(r'^new/',  'qa.views.test', include('qa.urls')),
    url(r'^question/(?P<id>[0-9]+)/$',  'qa.views.test', include('qa.urls')),
]
