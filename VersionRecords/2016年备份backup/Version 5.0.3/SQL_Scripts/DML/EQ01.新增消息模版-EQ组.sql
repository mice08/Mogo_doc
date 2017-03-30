/* Database name `mogoroomdb` ，新增消息模版*/
use mogoroomdb;


BEGIN;
INSERT INTO `mesg_templet`(templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES('sms_brand_online_notify', '品牌上线提醒', '品牌上线提醒', 1, 2, NOW(), 5, 1, 10);

SET @i = (SELECT id FROM  mesg_templet WHERE templetCode='sms_brand_online_notify');
INSERT INTO `mesg_subtemplet`(templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@i, 2, '品牌上线提醒','<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><title>mail model</title></head><body><p>小伙伴，你好：</p><p>今日到期应操作上线的品牌有：</p><p>${brandNames}</p><p>请尽快登录BS后台，查看具体信息并进行相关操作。</p></body></html>', 1, 1, NULL, NULL);
COMMIT;
