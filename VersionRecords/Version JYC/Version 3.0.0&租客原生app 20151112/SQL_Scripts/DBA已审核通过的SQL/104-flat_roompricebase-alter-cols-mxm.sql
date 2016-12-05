use mogoroomdb;

ALTER TABLE `flat_roompricebase`
DROP COLUMN `startTime`,
DROP COLUMN `endTime`,
DROP COLUMN `amount`,
ADD COLUMN `deadlineDate`  int NULL COMMENT '房租收款截止日期（正数x表示每月x日，负数y表示从租期提前y天）' AFTER `goodsIdType` 
;
