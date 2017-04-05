
-- 2015年10月27日 09:57:06 郑良杰
-- BS后台未审核通过发送短信模版

INSERT INTO `mesg_template` ( `type`, `content`, `paramCount`, `status`) VALUES ( 'sms_picture_unVerify_landlord', '您好，您房源${1}的照片审核未通过(原因：${2})，请及时修正重新提交审核。', '2', '1');
INSERT INTO `mesg_template` ( `type`, `content`, `paramCount`, `status`) VALUES ( 'sms_picture_unVerify_saleman', '您好，职业房东${1}的房源${2}的照片审核未通过，请及时联系职业房东修正并重新提交审核。', '2', '1');

-- 添加查询索引

ALTER TABLE `landlord_community_relation`
ADD INDEX `lcr_landlordId` (`landlordId`) USING BTREE ,
ADD INDEX `lcr_communityId` (`communityId`) USING BTREE ;
