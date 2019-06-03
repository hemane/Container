FROM debian:stretch-slim

MAINTAINER "Kräml, Marcel / Vleugels, Rene"

ENV NGINX_VERSION 1.15.12-1~stretch

RUN apt-get update \
	&& apt-get install --no-install-recommends --no-install-suggests -y nginx \
	&& mkdir -p website/normal \
	&& cd /etc/nginx/sites-available \
	&& rm default


STOPSIGNAL SIGTERM

VOLUME ["/etc/nginx/sites-available"]
VOLUME ["/website/normal"]
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
