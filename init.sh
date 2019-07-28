sudo virtualenv -p python3 myvenv
sudo source myvenv/bin/activate
sudo pip install --upgrade pip
sudo pip install django
sudo pip install gunicorn
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo nginx -c /etc/nginx/sites-enabled/test.conf


sudo /etc/init.d/mysql start
sudo django-admin.py startproject ask
cd ask
sudo python manage.py startapp qa
cd ..
sudo bash -c 'cat other/views.py >> ask/qa/views.py'
cd ask
cd ask
sudo rm -rf urls.py
cd
cd web
cd other
sudo cp urls.py /home/box/web/ask/ask/
cd ..
cd ask
cd ask
sudo mkdir qa
cd
cd web
cd other
sudo cp views.py /home/box/web/ask/ask/qa/
sudo ln -s /home/box/web/etc/gunicorn.conf.py   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
