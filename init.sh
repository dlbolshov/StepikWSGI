sudo ln -fs /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/hello.py /etc/gunicorn.d/
sudo rm -rf /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart
gunicorn --bind='0.0.0.0:8080' hello:hello  # -b 0.0.0.0:8080