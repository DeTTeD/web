from django.contrib import admin
from django.conf.urls import url, include, patterns
from qa.views import test

admin.autodiscover()


urlpatterns = [
    url(r'^login/.*$',  include('qa.urls')),
    url(r'^$',  include('qa.urls')),
    url(r'^ask/.*',  include('qa.urls')),
    url(r'^popular/.*',  include('qa.urls')),
    url(r'^new/',  include('qa.urls')),
    url(r'^question/(?P<id>[0-9]+)/$',  include('qa.urls')),
]
