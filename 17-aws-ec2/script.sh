#!/bin/bash
sudo apt-get update && sudo apt-get install -y apache2 
if [ ! -f /var/www/html/index.html ]; then 
    echo "<html><body><h1>Hello World!</h1></body></html>" > /var/www/html/index.html 
fi
sudo systemctl restart apache2 