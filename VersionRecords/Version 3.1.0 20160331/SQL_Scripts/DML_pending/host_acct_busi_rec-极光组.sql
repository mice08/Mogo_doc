/*  Database name `mogoroomdb` ，host_acct_busi_rec的hostFlatRelId初始化*/
use mogoroomdb;

alter table host_acct_busi_rec modify hostFlatRelId int(11) default 0 COMMENT '业主和房源关系表ID';

/*第一步*/
UPDATE `host_acct_busi_rec` t1,
 (SELECT t1.`host_id`,t1.`flat_id`,t1.`landlord_id`,t1.`create_time` ,t2.`id`
FROM `host_acct_busi_rec` t1 
LEFT JOIN `host_flats_relation` t2 
ON t1.`host_id`=t2.`host_id` AND t1.`flat_id`=t2.`flat_id` AND t1.`landlord_id`=t2.`landlord_id` 
	AND t1.`create_time`>=DATE_ADD(t2.`create_time`, INTERVAL -1 SECOND) AND t1.`create_time`<=DATE_ADD(t2.`create_time`, INTERVAL 1 SECOND)
WHERE t1.`STATUS`=1 AND t1.`hostFlatRelId` =0) t2
SET t1.hostFlatRelId = t2.id 
WHERE t1.`host_id`=t2.host_id AND t1.`flat_id`=t2.flat_id AND t1.`landlord_id`=t2.landlord_id;


/*第二步*/
UPDATE `host_acct_busi_rec` t1,
(SELECT t1.`host_id`,t1.`flat_id`,t1.`landlord_id`,t1.`create_time` ,t2.`id`
FROM `host_acct_busi_rec` t1 
LEFT JOIN `host_flats_relation` t2 
ON t1.`host_id`=t2.`host_id` AND t1.`flat_id`=t2.`flat_id` AND t1.`landlord_id`=t2.`landlord_id` 
	AND t1.`create_time`>=DATE_ADD(t2.`create_time`, INTERVAL -1 MINUTE) AND t1.`create_time`<=DATE_ADD(t2.`create_time`, INTERVAL 1 MINUTE)
WHERE t1.`STATUS`=1 AND t1.`hostFlatRelId` =0) t2
SET t1.hostFlatRelId = t2.id 
WHERE t1.`host_id`=t2.host_id AND t1.`flat_id`=t2.flat_id AND t1.`landlord_id`=t2.landlord_id;

alter table host_acct_busi_rec modify hostFlatRelId int(11) NOT NULL default 0 COMMENT '业主和房源关系表ID';
