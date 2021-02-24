sudo bash -c "echo listen_addresses = \'*\' >> /etc/postgresql/12/main/postgresql.conf"
sudo bash -c 'echo host all all 0.0.0.0/0 md5 >> /etc/postgresql/12/main/pg_hba.conf'
sudo bash -c 'echo host all all ::/0 md5 >> /etc/postgresql/12/main/pg_hba.conf'
sudo service postgresql start
sudo service postgresql status
sudo -u postgres psql -c "CREATE USER gis WITH PASSWORD 'gis';"
sudo -u postgres psql -c "CREATE DATABASE geodatabase OWNER gis;"
sudo -u postgres psql -d geodatabase -c "CREATE EXTENSION postgis;"
