use mogoroomdb;
-- 添加告警短信模版
-- update by zhengliangjie 
-- 2015年12月11日 10:13:14
INSERT INTO `mesg_template` ( `type`, `content`, `paramCount`, `status`) VALUES 
( 'sms_warn_notice', '您好！现有告警编码${1}出错，请登录后台系统及时处理！', '1', '1');