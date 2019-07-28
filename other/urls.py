from django.contrib import admin
from django.urls import path
from django.conf.urls import patterns, include, url

urlpatterns = [
    path('admin/', admin.site.urls),
]

urlpatterns = patterns('',
    url(r'^login/', include('qa.urls')),
    url(r'^$', include('qa.urls')),
    url(r'^ask/', include('qa.urls')),
    url(r'^popular/', include('qa.urls')),
    url(r'^new/', include('qa.urls')),
    url(r'^question/<123>/', include('qa.urls')),
)
