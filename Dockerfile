FROM node:alpine
MAINTAINER E Rasche <hxr@hx42.org>

RUN apk update && \
    apk add postgresql-client && \
    apk add postgresql && \
	npm update && \
    npm install -g postgraphql

ADD run.sh /run.sh
EXPOSE 5000
ENTRYPOINT ["/run.sh"]
