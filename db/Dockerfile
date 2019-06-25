FROM debian:stretch-slim

MAINTAINER "Kräml, Marcel / Vleugels, Rene"

RUN apt-get update \
	&& apt-get install --no-install-recommends --no-install-suggests -y mysql-server

COPY config/50-server.cnf /etc/mysql/mariadb.conf.d

EXPOSE 3306

STOPSIGNAL SIGTERM

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
