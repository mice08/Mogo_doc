/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.6.25 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

insert into `mesg_template` (`type`, `content`, `paramCount`) values('sms_renter_mogobao_lakala_failure','[蘑菇宝不通过]蘑菇宝审申请资料填写有误，请在当天22点前修改后重新提交。','0');
insert into `mesg_template` (`type`, `content`, `paramCount`) values('sms_renter_mogobao_lakala_success','[蘑菇宝已通过]您的蘑菇宝已通过审核，请确保每月交租日关联借记卡中留有足够金额。','0');
insert into `mesg_template` (`type`, `content`, `paramCount`) values('sms_renter_mogobao_mogo_success','[蘑菇宝已通过]您的蘑菇宝已通过审核，请每月交租日前登录蘑菇租房APP支付房租。','0');

INSERT INTO mesg_template(TYPE,content) VALUES ('sms_CreateMogobaoSaleBillByBill','你${1}-${2}月的租金账单支付日为${3},请您于支付日当天17:00前确保关联借记卡内存款足额.')
