/* Database name `mogoroomdb` ，插入消息模版 */
USE mogoroomdb;

BEGIN;
INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES('sms_landlord_guanWangYuyueSuccessNotify_push', '租客预约看房', '租客预约看房', 1, 2, STR_TO_DATE('2015-12-07 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 1);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES((SELECT id FROM mesg_templet WHERE templetCode = 'sms_landlord_guanWangYuyueSuccessNotify_push'), 3, '预约带看申请', '${name}你好，${roomInfo}房源有新预约带看需求，带看时间：${lookTime}，租客姓名：${renterName}，手机号码：${renterPhoneNum}。请尽快与租客电话沟通联系', 1, 1, NULL, NULL);
COMMIT;