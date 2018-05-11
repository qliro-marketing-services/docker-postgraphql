FROM node:alpine
MAINTAINER E Rasche <hxr@hx42.org>

RUN apk update && \
    apk add postgresql-client && \
    apk add postgresql && \
	npm update && \
    npm install -g postgraphile postgraphile-plugin-connection-filter

ADD run.sh /run.sh
EXPOSE 5000
ENTRYPOINT ["/run.sh"]
