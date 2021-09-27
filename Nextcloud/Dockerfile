FROM nextcloud:apache

RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false update 
RUN apt-get install -y supervisor 
RUN rm -rf /var/lib/apt/lists/* 
RUN  mkdir /var/log/supervisord /var/run/supervisord

COPY supervisord.conf /

ENV NEXTCLOUD_UPDATE=1

CMD ["/usr/bin/supervisord", "-c", "/supervisord.conf"]
