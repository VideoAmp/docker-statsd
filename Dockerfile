# Dockerfile for statsd
#
# VERSION               0.1
# DOCKER-VERSION        0.4.0

from    ubuntu:12.10
run     echo "deb http://archive.ubuntu.com/ubuntu quantal main universe" > /etc/apt/sources.list
run     apt-get -y update
run     apt-get -y install wget git python supervisor

run     wget -O - http://nodejs.org/dist/v0.11.0/node-v0.11.0-linux-x64.tar.gz | tar -C /usr/local/ --strip-components=1 -zxv
run     git clone git://github.com/etsy/statsd.git statsd
run     mkdir -p /var/log/supervisor

add     ./config.json ./statsd/config.json
add     ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

expose  :8125/udp

cmd     supervisord -n