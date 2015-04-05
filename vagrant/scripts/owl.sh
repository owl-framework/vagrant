#!/usr/bin/env bash

echo "Installing Owl 2..."

cd ~/build
git clone https://github.com/owl-framework/owl
cd owl
zephir install

echo extension=owl.so > /etc/php5/cli/conf.d/30-owl.ini
echo extension=owl.so > /etc/php5/fpm/conf.d/30-owl.ini
