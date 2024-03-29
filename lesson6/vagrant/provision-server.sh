sudo /bin/su -c "echo '192.168.1.200 client' >> /etc/hosts"
sudo ssh-keygen
/n
1234
1234
sudo ssh-copy-id vagrant@client
yes
vagrant
sudo /bin/su -c "echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config"
sudo systemctl restart ssh*