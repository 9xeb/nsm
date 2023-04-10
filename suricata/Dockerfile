FROM ubuntu:latest
RUN apt-get update && apt-get -y install software-properties-common
RUN add-apt-repository ppa:oisf/suricata-stable && apt-get update && apt-get -y install suricata jq
RUN apt-get -y purge software-properties-common && apt-get -y autoremove
COPY docker-entrypoint.sh /docker-entrypoint.sh

CMD /bin/bash /docker-entrypoint.sh
