# Dockerfile for statsd
#

from    centos:centos7
run     yum -y update
run     yum -y install wget git python gcc gcc-c++ make snappy
run     wget -O /tmp/node-v5.0.0-linux-x64.tar.gz https://nodejs.org/dist/v5.0.0/node-v5.0.0-linux-x64.tar.gz
run     tar -C /usr/local/ --strip-components=1 -zxvf /tmp/node-v5.0.0-linux-x64.tar.gz
run     rm /tmp/node-v5.0.0-linux-x64.tar.gz
run     git clone git://github.com/etsy/statsd.git statsd
workdir statsd
run     npm install git://github.com/VideoAmp/statsd-kafka-es-backend.git
workdir /
add     ./config.js ./statsd/config.js

expose  8125/udp
expose  8126/tcp

cmd     /usr/local/bin/node /statsd/stats.js /statsd/config.js
