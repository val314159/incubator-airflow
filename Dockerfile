FROM ubuntu

RUN apt-get -y update\
 && apt-get -y upgrade\
 && apt-get -y install apt-utils

RUN apt-get -y install build-essential emacs-nox curl wget tree telnet\
  python-virtualenv python-tox python3.5 libmysqlclient-dev python-dev \
  python3-dev libkrb5-dev krb5-user libsasl2-dev default-jre sudo \
  openssl-server openssl-client

RUN echo 'PS1=\>\>' >> /root/.profile\
 && echo 'PS2=\ \>' >> /root/.profile

#RUN apt-get -y install mysql-server mysql-client
#RUN apt-get -y install python-mysqldb
#RUN apt-get -y install python-mysqldb-dbg python-egenix-mxdatetime
