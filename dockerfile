FROM postgres:14

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=mypassword

RUN apt-get update && apt-get install -y pglogical

RUN psql -U postgres -d postgres -c "CREATE USER replicator REPLICATION ROLE PASSWORD 'mypassword';"

EXPOSE 5432

CMD ["postgres", "-c", "wal_level = hot_standby"]

