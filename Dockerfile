FROM requarks/wiki

WORKDIR /var/wiki

COPY config.yml /var/wiki/config.yml

CMD [ "node", "server" ]
