FROM alpine:latest 
MAINTAINER "Levent SAGIROGLU" <LSagiroglu@gmail.com>
# Henrique Dias - Web File Manager - https://github.com/hacdias/filemanager

VOLUME /srv 
ENV FM_ROOT "/" 
COPY entrypoint.sh /bin/entrypoint.sh 
COPY filemanager /bin/filemanager 
COPY README.md /srv/README.md 
EXPOSE 80 
ENTRYPOINT ["/bin/entrypoint.sh"]

