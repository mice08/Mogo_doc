/* Database name `mogoroomdb` */
USE mogoroomdb;

/* 修改消息模版 提醒房东有400电话未接电话 影响记录条数：1 */
UPDATE `mesg_subtemplet` SET templetContent='您在${callTime}有一通租客未接来电，来电号码${renterPhone}，${serviceNum}是蘑菇租客统一来电号码，请保存。' WHERE templetId IN ( SELECT id FROM mesg_templet WHERE templetCode='tele_notifyLandlordMissCall' AND valid='1' );
