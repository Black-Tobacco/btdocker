docker run -p 8000:8000 -p 80:80 -p 443:443 -p 3306:3306 -v /opt/ajentiserver/www:/var/www/ -v /opt/ajentiserver/data:/data -v /opt/ajentiserver/backup:/backup -v /opt/ajentiserver/mysql:/var/lib/mysql -e MYSQL_ADMIN_PASSWORD=negromerca -d ajenti



WHATPANEL
docker run -p 8000:8000 -p 80:80 -p 443:443 --link db -v /opt/ajentiserver/www:/var/www/ -v /opt/ajentiserver/data:/data -v /opt/ajentiserver/backup:/backup -d ajenti
d
loocker run -d -p 8000:8000 -p 80:80 -p 443:443 -p 2222:22 -p 21:21 -v /opt/ajentiserver/www:/var/www/ -v /opt/ajentiserver/data:/data -v /opt/ajentiserver/backup:/backup  paimpozhil/whatpanel

