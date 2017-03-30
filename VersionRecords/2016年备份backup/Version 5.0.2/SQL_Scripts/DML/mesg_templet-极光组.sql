/*添加聚有财常规账单支付失败模板*/
use mogoroomdb;

INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES('sms_renter_repayFailedWarning','聚有财常规账单支付失败','聚有财常规账单支付失败','1','2',NOW(),'3',NULL,NOW(),NULL,'1','5');
SELECT @templetid:= (SELECT id FROM mesg_templet WHERE templetCode = 'sms_renter_repayFailedWarning');

INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES(@templetid,'1','聚有财常规账单支付失败','您${rentMonth}月租金还款失败，请您重新登录蘑菇租房APP进行支付，并确保支付时有足够金额${totalAmount}元，谢谢！','1','1',NULL,NULL);