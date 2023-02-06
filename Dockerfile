FROM docker/compose:1.29.2
LABEL one.brotherday.vendor "Brother Day"
LABEL one.brotherday.image.authors "Steve Huguenin <steve@brotherday.one>"
LABEL org.opencontainers.image.source https://github.com/brotherday/mainstream
LABEL version 1.0
LABEL description "Run mainstream from Docker compose"
LABEL license AGPL-3.0
EXPOSE 3000
EXPOSE 80
CMD docker-compose up
ADD . .
