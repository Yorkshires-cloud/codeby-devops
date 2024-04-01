sudo apt update
sudo apt install sshpass
sudo /bin/su -c "echo '192.168.1.200 client' >> /etc/hosts"
sudo ssh-keygen -P "1234" -f /home/vagrant/.ssh/id_rsa
sudo sshpass -p "vagrant" ssh-copy-id -i /home/vagrant/.ssh/id_rsa -o StrictHostKeyChecking=no vagrant@client
sudo /bin/su -c "echo 'PubkeyAuthentication yes' > /etc/ssh/sshd_config"
sudo /bin/su -c "echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config"
sudo systemctl restart ssh*