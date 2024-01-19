CREATE USER replica_user WITH SUPERUSER PASSWORD '112233';
CREATE RECOVERY SLOT slot1_name LOG SHIPMENT = 'primary';
SET application_name = 'my_replica';

CREATE SUBSCRIPTION my_subscription FOR my_publication FROM slot1_name;
