
#!/bin/bash
yum install httpd php-mysql -y
amazon-linux-extras install -y php7.3
cd /var/www/html
echo "Hello from AWS Project" > healthy.html
wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
cp -r wordpress/* /var/www/html/
rm -rf wordpress
rm -rf latest.tar.gz
chmod -R 755 wp-content
chown -R apache:apache wp-content
chkconfig httpd on
service httpd start

