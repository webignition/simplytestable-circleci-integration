#!/usr/bin/env bash

# Install W3C html validator package
sudo mkdir /etc/apache2/conf.d
sudo apt-get update
sudo apt-get install w3c-markup-validator
sudo sed -i 's/Allow Private IPs = no/Allow Private IPs = yes/' /etc/w3c/validator.conf

# Install validator.nu html5 validator
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
git clone https://github.com/validator/validator.git html-validator
cd html-validator
python ./build/build.py update
python ./build/build.py dldeps
python ./build/build.py build

# Configure W3C validator to use local validator.nu for HTML5 documents
sudo sed -i 's/#HTML5/HTML5/' /etc/w3c/validator.conf
