FROM ageneau/btdocker:ubuntu
MAINTAINER Sylvain Ageneau "sylvain.ageneau@black-tobacco.com"

USER root
RUN apt-get update -qq && apt-get -y install nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN mkdir /etc/nginx/ssl
ADD default /etc/nginx/sites-available/default
ADD default-ssl /etc/nginx/sites-available/default-ssl

EXPOSE 80

CMD ["nginx"]
