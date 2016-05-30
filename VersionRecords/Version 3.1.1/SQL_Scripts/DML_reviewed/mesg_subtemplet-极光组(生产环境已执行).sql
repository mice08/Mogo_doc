/*  Database name `mogoroomdb` ，消息修改模板*/
use mogoroomdb;

UPDATE mesg_subtemplet SET templetContent='${renterName}您好，我是您的房东${landlordName}先生/女士，为提升服务品质，我已与白领租房平台——蘑菇租房开展合作，特请您使用蘑菇租房APP（账号${cellPhone}，临时密码${password}）。确认租房订单后即可在线缴纳费用及报修，更有十万单身白领约你乐活。蘑菇租房，让我们住的更好，APP下载地址：（www.mogoroom.com/pages/activity/AppDown.jsp），别忘修改密码哦~若有疑问，请与我联系。' WHERE templetid=(SELECT id FROM mesg_templet WHERE templetCode='sms_additional_new_renter');