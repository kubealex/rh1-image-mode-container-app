#!/bin/bash
sudo mysql -uroot -e "CREATE DATABASE petclinic"
sudo mysql -uroot petclinic < /opt/petclinic.sql
sudo rm -rf /home/bootc-user/load_data
sudo systemctl disable --now load-data
sudo systemctl restart petclinic
