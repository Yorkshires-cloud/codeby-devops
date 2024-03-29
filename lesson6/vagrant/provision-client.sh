sudo apt update
sudo apt install sshpass
sudo /bin/su -c "echo '192.168.1.201 server' >> /etc/hosts"
sudo ssh-keygen -P "1234" -f /vagrant/.ssh/id_rsa1
sudo cat /vagrant/.ssh/id_rsa1.pub | sshpass -p "vagrant" ssh vagrant@server "mkdir -p /vagrant/.ssh && touch /vagrant/.ssh/authorized_keys && chmod 777 go= /vagrant/.ssh && cat >> /vagrant/.ssh/authorized_keys"
sudo /bin/su -c "echo 'PasswordAuthentication no' > /etc/ssh/sshd_config"
sudo systemctl restart ssh*