#!/bin/bash
# echo '########## yum update all ###############'
# sudo yum update -y
echo '########## basic webserver ##############'
sudo yum install -y httpd
sudo systemctl enable  httpd.service
sudo systemctl start  httpd.service
sudo echo '<html><head></head><body><pre><code>' > /var/www/html/index.html
sudo hostname >> /var/www/html/index.html
sudo echo '' >> /var/www/html/index.html
sudo cat /etc/os-release >> /var/www/html/index.html
sudo echo '</code></pre></body></html>' >> /var/www/html/index.html
sudo firewall-offline-cmd --add-service=http
sudo systemctl enable  firewalld
sudo systemctl restart  firewalld

