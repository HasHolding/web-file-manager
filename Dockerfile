FROM alpine:latest

MAINTAINER "Levent SAGIROGLU" <LSagiroglu@gmail.com>
# Henrique Dias - Web File Manager 
# https://github.com/hacdias/filemanager

ENV FM_ROOT "/"

VOLUME /srv
VOLUME /etc

COPY filemanager /bin/filemanager
#COPY config.json /etc/filemanager/config.json
COPY README.md /srv/README.md

EXPOSE 80

ENTRYPOINT ["/bin/filemanager"]
CMD ["-p", "80", "-s", "$FM_ROOT", "-d", "/etc/fm.db" ]
#CMD ["--config", "/etc/filemanager/config.json"]

