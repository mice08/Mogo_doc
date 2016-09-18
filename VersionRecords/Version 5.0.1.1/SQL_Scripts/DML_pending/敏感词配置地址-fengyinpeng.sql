use mogoroomdb;
UPDATE comm_sysconfig SET val='/var/lib/docker/contract/sensitive_words/SensitiveWord.txt' WHERE keyName='all-sensitiveword-addr';

UPDATE comm_sysconfig SET val='pay.api.mogoroom.com' WHERE keyName='bs-order-query';
