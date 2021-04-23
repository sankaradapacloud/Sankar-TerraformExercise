#!/bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2


s3 cp s3://${aws_s3_bucket}/ /var/www/html/ --recursive
