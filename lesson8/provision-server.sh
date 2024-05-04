sudo apt update
sudo apt install -y apache2 sshpass
sudo /bin/su -c "echo '192.168.1.201 server.local' >> /etc/hosts"
sudo mkdir /etc/secure/
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/secure/server.local.key -out /etc/secure/server.local.crt -subj "/C=GB/ST=London/L=London/O=Global Security/OU=IT Department/CN=server.local"
sudo cp /vagrant/server.local.conf /etc/apache2/sites-available/server.local.conf
sudo cp /vagrant/server.local-ssl.conf /etc/apache2/sites-available/server.local-ssl.conf
sudo a2ensite server.local-ssl
sudo a2enmod rewrite
sudo a2enmod ssl
sudo systemctl restart apache2
sudo sshpass -p "vagrant" scp -o StrictHostKeyChecking=no /etc/secure/server.local.crt vagrant@192.168.1.200:/home/vagrant/server.local.crt