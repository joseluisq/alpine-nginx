FROM gliderlabs/alpine

RUN apk-install nginx && mkdir /tmp/nginx

RUN chown -R nginx /var/lib/nginx

RUN mkdir /run/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

