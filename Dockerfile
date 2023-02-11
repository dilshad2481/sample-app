FROM ubuntu:20.04
ENV TZ=America \
    DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y apache2
ADD . /var/www/html
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]

