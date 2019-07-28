from django.contrib import admin
from django.urls import path
from django.conf.urls import patterns, include, url

urlpatterns = [
    path('admin/', admin.site.urls),
]

urlpatterns = patterns('qa.views',
    url(r'^login/.*$', 'test', name='login', include('qa.urls')),
    url(r'^$', 'test', include('qa.urls')),
    url(r'^ask/.*', 'test', name='ask', include('qa.urls')),
    url(r'^popular/.*', 'test', name='popular', include('qa.urls')),
    url(r'^new/', 'test', name='new', include('qa.urls')),
    url(r'^question/(?P<id>[0-9]+)/$', 'test', name='question', include('qa.urls')),
)
