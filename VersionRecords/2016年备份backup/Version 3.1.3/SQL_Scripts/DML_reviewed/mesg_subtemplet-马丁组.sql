USE mogoroomdb;

BEGIN;
SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_room_onlineStatus_landlord', '房间上下架', '房间上下架', 1, 2, NOW(), 5, 1, 10);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '房间上下架', '${landlordName}您好，您的房源${communityName}小区${building}栋${unit}单元${roomNum}号，经审核不适合对外展示，已被平台调整隐藏，理由：${remard}。如有疑问，请联系蘑菇客服400-800-4949', 1, 1, NULL, NULL);

COMMIT;