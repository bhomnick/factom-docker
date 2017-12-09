FROM debian:9
MAINTAINER Ben Homnick <bhomnick@gmail.com>

RUN apt-get update && apt-get install -y supervisor
ADD https://github.com/FactomProject/distribution/releases/download/v0.4.2.11/factom-amd64.deb factom.deb
RUN dpkg -i factom.deb
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 8088 8089 8090
CMD ["/usr/bin/supervisord"]
