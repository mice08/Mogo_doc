use mogoroomdb;
UPDATE comm_sysconfig SET val='/var/lib/docker/contract/sensitive_words/SensitiveWord.txt' WHERE keyName='all-sensitiveword-addr';

UPDATE comm_sysconfig SET val='172.16.1.1:8020' WHERE keyName='bs-order-query';
