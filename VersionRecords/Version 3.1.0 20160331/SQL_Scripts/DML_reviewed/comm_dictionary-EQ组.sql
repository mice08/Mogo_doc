/* Database name `mogoroomdb` , 3.1.0版本app消息推送增加四种消息logo记录，3.1.0版本app消息推送更新推送消息所属类型*/
use mogoroomdb;

INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`,`enValue`) VALUES ('denglu.png', 'msgico', '1', '11', '登录',''); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`,`enValue`) VALUES ('tousu.png', 'msgico', '1', '12', '投诉',''); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`,`enValue`) VALUES ('zufang.png', 'msgico', '1', '13', '租房',''); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`,`enValue`) VALUES ('zuke.png', 'msgico', '1', '14', '欢迎租客',''); 


#更新发送短信子模板(蘑菇宝审核资料有误)
UPDATE mesg_templet 
SET businessType = 3
WHERE templetCode = 'sms_renter_mogobao_lakala_failure';

 #(蘑菇宝审核不通过（终审不过/金融部不过）)
UPDATE mesg_templet 
SET businessType = 3
WHERE templetCode = 'sms_renter_mogobao_end_failure';


 #(蘑菇宝审核不通过（蘑菇宝审核通过（拉卡拉蘑菇宝））)
UPDATE mesg_templet 
SET businessType = 3
WHERE templetCode = 'sms_renter_mogobao_lakala_success';

 #(蘑菇宝审核不通过（蘑菇宝审核通过（自营蘑菇宝）)
UPDATE mesg_templet 
SET businessType = 3
WHERE templetCode = 'sms_renter_mogobao_mogo_success';

 #(蘑菇宝审核不通过（投诉申请成功)
UPDATE mesg_templet 
SET businessType = 12
WHERE templetCode = 'sms_renter_complainAdd';

 #(蘑菇宝审核不通过（投诉已解决)
UPDATE mesg_templet 
SET businessType = 12
WHERE templetCode = 'sms_renter_complainSolve';

 #(蘑菇宝审核不通过（投诉已撤销)
UPDATE mesg_templet 
SET businessType = 12
WHERE templetCode = 'sms_renter_complainUndo';

UPDATE mesg_templet 
SET businessType = 11
WHERE templetCode = 'sms_renter_register';

UPDATE mesg_templet 
SET businessType = 11
WHERE templetCode = 'sms_renter_renterAddPayPwd';

UPDATE mesg_templet 
SET businessType = 11
WHERE templetCode = 'sms_renter_verificationCode';

UPDATE mesg_templet 
SET businessType = 11
WHERE templetCode = 'email_renter_verificationCode';

UPDATE mesg_templet 
SET businessType = 14
WHERE templetCode = 'sms_sendWelcomeNewRoommate';

