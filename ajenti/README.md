=RUN

docker run -p 8000:8000 -p 80:80 -p 443:443 -p 3306:3306 -v /opt/ajentiserver/www:/var/www/ -v /opt/ajentiserver/data:/data -v /opt/ajentiserver/backup:/backup -v /opt/ajentiserver/mysql:/var/lib/mysql -e MYSQL_ADMIN_PASSWORD=<PASSWORD> -d blacktobacco/ajenti




