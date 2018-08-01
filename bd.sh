echo "create database glpi;" | mysql -uroot
echo "create user glpi@localhost identified by '123456';" | mysql -uroot
echo "grant all on glpi.* to glpi identified by '123456';" | mysql -uroot
