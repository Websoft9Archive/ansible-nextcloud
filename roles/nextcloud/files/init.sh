#!/bin/bash

old_password=$(cat /credentials/password.txt | awk 'NR==2' |awk -F ":" '{print $2}')

new_root_password=$(pwgen -Acns 8 1)
new_nextcloud_password=$(pwgen -Acns 8 1)

systemctl restart mysql

root_hosts=$(echo $(mysql -uroot -p${old_password} -e "select host from mysql.user where user='root';") | sed 's/^host//')

for i in $root_hosts
do
  mysqladmin -uroot -p${old_password} -h $i password $new_root_password
done

mysqladmin -unextcloud -p${old_password} password $new_nextcloud_password


echo -e 'MySQL username:root\nMySQL Password:'$new_root_password  > /credentials/password.txt
echo -e '\nMySQL username:nextcloud\nMySQL Password:'$new_nextcloud_password  >> /credentials/password.txt

sed -i 's/\/root\/init.sh//g' /etc/rc.local

rm -rf /root/init.sh
