FROM scratch
MAINTAINER "Levent SAGIROGLU" <LSagiroglu@gmail.com>
# Henrique Dias - Web File Manager 
# https://github.com/hacdias/filemanager

VOLUME /srv
VOLUME /etc

COPY filemanager /bin/filemanager
COPY config.json /etc/filemanager/config.json
COPY README.md /srv/README.md

EXPOSE 80

ENTRYPOINT ["/bin/filemanager"]
CMD ["--config", "/etc/filemanager/config.json"]
#CMD ["-p", "80", "-s","/" ]
