CREATE USER replicator WITH REPLICATION PASSWORD '112233';
CREATE PUBLICATION my_publication FOR TABLE test;
SET wal_level = 'hot_standby';

