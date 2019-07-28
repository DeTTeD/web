sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo nginx -c /etc/nginx/sites-enabled/test.conf
sudo ln -s /home/box/web/etc/gunicorn.conf.py   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
sudo /etc/init.d/mysql start
sudo django-admin.py startproject ask
cd ask
sudo python manage.py startapp qa
sudo bash -c 'cat /other/views.py >> /ask/qa/views.py'
