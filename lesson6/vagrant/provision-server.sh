sudo apt update
sudo apt install sshpass
sudo /bin/su -c "echo '192.168.1.200 client' >> /etc/hosts"
sudo ssh-keygen -P "1234" -f /vagrant/.ssh/id_rsa2
sudo cat /vagrant/.ssh/id_rsa2.pub | sshpass -p "vagrant" ssh vagrant@client "mkdir -p /vagrant/.ssh && touch /vagrant/.ssh/authorized_keys && chmod 777 go= /vagrant/.ssh && cat >> /vagrant/.ssh/authorized_keys"
sudo /bin/su -c "echo 'PasswordAuthentication no' > /etc/ssh/sshd_config"
sudo systemctl restart ssh*