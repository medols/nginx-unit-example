FROM ubuntu:16.04

ARG VERSION=1.6-1~xenial

COPY unit.list /etc/apt/sources.list.d/

ADD http://nginx.org/keys/nginx_signing.key .

RUN apt-key add nginx_signing.key && \
        apt-get -y update && \
        apt-get -y install \
			unit=$VERSION \
			unit-ruby=$VERSION

COPY config/conf.json /var/lib/unit/

COPY www/ruby/* /var/www/ruby/

CMD ["/usr/sbin/unitd", "--no-daemon", "--control", "0.0.0.0:8080"]
