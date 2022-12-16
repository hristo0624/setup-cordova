FROM androidsdk/android-30

RUN apt update && apt install nodejs npm && \
    npm install -g cordova

COPY entrypoint.sh /usr/src/entrypoint.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]
