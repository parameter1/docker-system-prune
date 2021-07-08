FROM alpine:latest

RUN  apk add --update bash docker && rm -rf /var/cache/apk/*

ENV DELAY=3600

ADD run.sh /run.sh
ENTRYPOINT ["/run.sh"]
