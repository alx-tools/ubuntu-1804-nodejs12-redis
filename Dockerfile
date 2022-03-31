FROM holbertonschool/ubuntu-1804-nodejs12
MAINTAINER Guillaume Salva <guillaume@holbertonschool.com>

# Install redis server and the redis client
RUN apt-get -y install redis-server

RUN sed -i "s/bind .*/bind 127.0.0.1/g" /etc/redis/redis.conf

ADD run.sh /etc/sandbox_run.sh
RUN chmod u+x /etc/sandbox_run.sh

# start run!
CMD ["./etc/sandbox_run.sh"]
