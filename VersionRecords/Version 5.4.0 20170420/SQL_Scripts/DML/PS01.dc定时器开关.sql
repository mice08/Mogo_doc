/*dc定时器开关开启*/

USE mogoroomdb;
UPDATE comm_sysconfig SET val = 1 WHERE keyName = 'DcCopyToLandlordOperate';
UPDATE comm_sysconfig SET val = 1 WHERE keyName = 'LandlordOperateInitTask';
