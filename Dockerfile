FROM ubuntu

MAINTAINER unknown

COPY id.php /var/www/html/
COPY start.sh /start.sh

WORKDIR /

RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt install apache2 -y
RUN chmod +x ./start.sh
RUN DEBIAN_FRONTEND=noninteractive apt install --no-install-recommends php8.1 -y

CMD ["./start.sh"]