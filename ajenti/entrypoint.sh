#!/bin/bash
VOLUME_HOME="/var/lib/mysql"
export TERM=linux
if [[ ! -d $VOLUME_HOME/mysql ]]; then
    
    echo "=> An empty or uninitialized MySQL volume is detected in $VOLUME_HOME"
    echo "=> Installing MySQL ..."
    mysql_install_db --user=mysql

    echo "=> Reconfiguring MySQL ..."
    TERM=linux dpkg-reconfigure mysql-server
    PASSWD="$(grep -m 1 --only-matching --perl-regex "(?<=password \= ).*" /etc/mysql/debian.cnf)"
    /usr/bin/mysqld_safe &
    sleep 5s
    echo "=>executing   GRANT ALL PRIVILEGES ON *.* TO 'debian-sys-maint'@'localhost' IDENTIFIED BY '$PASSWD';"
    echo "GRANT ALL PRIVILEGES ON *.* TO 'debian-sys-maint'@'localhost' IDENTIFIED BY '$PASSWD';" | mysql

    /usr/bin/mysqladmin -u root password $MYSQL_ADMIN_PASSWORD
    
    killall mysqld    
    sleep 5s
    
    echo "=> Done!"  
else
    echo "=> Using an existing volume of MySQL"
fi

service mysql start

/usr/bin/ajenti-panel