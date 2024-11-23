sudo mysql -uroot -e "CREATE DATABASE petclinic"
sudo mysql -uroot petclinic < /opt/petclinic.sql
sudo systemctl restart petclinic
