FROM nginx:stable-alpine

ADD ./nginx.conf /etc/nginx/nginx.conf
#ADD conf/service.conf /etc/nginx/conf.d/service.conf

ADD ./entrypoint.sh /entrypoint.sh
ADD ./le.sh /le.sh

RUN \
    rm /etc/nginx/conf.d/default.conf && \
    chmod +x /entrypoint.sh && \
    chmod +x /le.sh && \
    apk add  --update certbot tzdata openssl && \
    rm -rf /var/cache/apk/*

CMD ["/entrypoint.sh"]
