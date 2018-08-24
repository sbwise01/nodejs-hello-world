FROM scratch
LABEL maintainer="brad@foghornconsulting.com"

ADD rootfs.tar.xz /

RUN apk add nodejs

RUN mkdir /app
COPY app.js /app

VOLUME /app
EXPOSE 3000

# Cleanup
RUN rm -rf /.wh /root/.cache /var/cache

WORKDIR /app
CMD ["/usr/bin/node", "app.js"]
