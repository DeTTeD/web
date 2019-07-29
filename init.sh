sudo apt-get update
sudo apt-get install -y python3.5
sudo apt-get install -y python3.5-dev
sudo unlink /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python3
sudo pip3 install --upgrade pip
sudo pip3 install --upgrade django==2.1
sudo pip3 install --upgrade gunicorn
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo nginx -c /etc/nginx/sites-enabled/test.conf


sudo /etc/init.d/mysql start
sudo django-admin.py startproject ask
cd ask
sudo python3 manage.py startapp qa
cd ..
sudo bash -c 'cat other/views.py >> ask/qa/views.py'
#cd ask
#cd ask
#sudo rm -rf urls.py
cd
cd web
cd other
#sudo cp urls.py /home/box/web/ask/ask/
sudo cp urls.py /home/box/web/ask/qa/

sudo ln -s /home/box/web/etc/gunicorn.conf.py   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
cd ..
cd ask
#sudo gunicorn -c /home/box/web/etc/gunicorn.conf.py ask.wsgi:application
