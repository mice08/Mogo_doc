use mogoroomdb;

BEGIN;

select * from comm_paytype where name in ('付一押一', '付一押一蘑菇宝');

UPDATE comm_paytype
SET payTypeGroup=1
WHERE name NOT IN  ('付一押一', '付一押一蘑菇宝');

UPDATE comm_paytype
SET payTypeGroup=2
WHERE name IN  ('付一押一', '付一押一蘑菇宝');

select * from comm_paytype where foregiftPeriods=0;


COMMIT;
