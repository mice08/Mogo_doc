use mogoroomdb;

SELECT @subtemplet_id:=(SELECT t.id FROM `mesg_subtemplet` t WHERE t.`templetType`=1 AND t.`templetId` = (SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_CreateCustomBillByBill'));
UPDATE `mesg_subtemplet` t SET t.`status`=0, t.`valid`=0 WHERE t.`id`=@subtemplet_id;
