FROM httpd:2.4-alpine
RUN apk update; \
    apk upgrade;
COPY ./apache.cnf /usr/local/apache2/conf/httpd.conf
EXPOSE 80