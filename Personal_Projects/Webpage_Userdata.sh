#!/bin/bash

yum install wget httpd zip unzip -y
systemctl start httpd
systemctl enable httpd
wget https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip
unzip 2136_kool_form_pack.zip
cp -r 2136_kool_form_pack/* /var/www/html/
systemctl restart httpd
