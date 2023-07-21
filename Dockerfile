FROM ubuntu

MAINTAINER unknown

COPY . /

RUN apt-get update -y && apt install apache2 -y
RUN chmod +x ./start.sh

CMD ["./start.sh"]
