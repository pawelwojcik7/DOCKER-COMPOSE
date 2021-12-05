FROM mysql:8.0.13
ENV MYSQL_ROOT_PASSWORD rootpasswd
COPY mysql.cnf /etc/mysql/