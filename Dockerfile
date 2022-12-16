FROM runmymind/docker-android-sdk:alpine-standalone

RUN apk update && apk upgrade && \
    apk add gradle npm && \
    npm install -g cordova

COPY entrypoint.sh /usr/src/entrypoint.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]
