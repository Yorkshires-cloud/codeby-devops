sudo /bin/su -c "echo '192.168.1.201 server.local' >> /etc/hosts"
sudo cp /home/vagrant/server.local.crt /usr/share/ca-certificates/mozilla/server.local.crt
sudo update-ca-certificates