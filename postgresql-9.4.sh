# Installation
sudo apt-get install postgresql-9.4 # previously add postgresql repository from postgres page 
sudo apt-get install pgadmin3

# Server setup

# change password for postgres user
sudo -u postgres psql postgres
\password postgres

# create database
 sudo -u postgres createdb mydb

