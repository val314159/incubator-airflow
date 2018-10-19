FROM ubuntu

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install apt-utils

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y install build-essential emacs-nox curl wget tree telnet \
  python-virtualenv python-tox python3.5 python-dev python3-dev \
  libmysqlclient-dev libkrb5-dev krb5-user krb5-admin-server \
  libsasl2-dev default-jre sudo openssl ssh

RUN echo 'PS1=\>\>' >> /root/.profile\
 && echo 'PS2=\ \>' >> /root/.profile

ENV SLUGIFY_USES_TEXT_UNIDECODE=yes

RUN apt-get -y install mysql-server mysql-client
RUN apt-get -y install python-mysqldb \
 python-mysqldb-dbg python-egenix-mxdatetime
