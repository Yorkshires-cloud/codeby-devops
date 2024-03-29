sudo /bin/su -c "echo '192.168.1.201 server' >> /etc/hosts"
sudo ssh-keygen
/n
1234
1234
sudo ssh-copy-id vagrant@server
yes
vagrant
sudo /bin/su -c "echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config"
sudo systemctl restart ssh*