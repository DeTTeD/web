sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo bash -c 'cat /home/box/web/etc/include.conf >> /etc/nginx/nginx.conf'
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo nginx -c /etc/nginx/siet-enabled/site.conf
sudo ln -s /home/box/web/etc/gunicorn.conf.py   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
sudo /etc/init.d/mysql start
