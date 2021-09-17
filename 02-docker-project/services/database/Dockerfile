FROM mysql:8.0

EXPOSE 3306

COPY ./config/my.cnf /root/.my.cnf
COPY ./dump/db_dump.sql docker-entrypoint-initdb.d







