FROM ubuntu:latest
RUN apt update -y && apt install -y tzdata && apt -y install apache2
RUN rm -f /var/www/html/*
DD . /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

