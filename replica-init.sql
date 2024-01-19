CREATE EXTENSION pglogical;
CREATE ROLE replicator WITH LOGIN PASSWORD '112233';
CREATE SUBSCRIPTION my_subscription FOR PUBLICATION my_publication FROM 'master' WITH CONNECTION_FILTER = '(host = 'master' port = '5432' user = 'replicator' password = '112233')';
SELECT pglogical.start_subscription('my_subscription');

