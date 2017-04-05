/* Database name `mogoroomdb` ，添加短信模板 */
use mogoroomdb;

insert into `mesg_template` (`type`, `content`, `paramCount`, `status`) values('sms_renter_paysubsidy','蘑菇租房邀您添加微信号（mogoactivity）领${1}元现金补贴，本微信还负责蘑菇线下活动与免费券发放。蘑菇平台十万白领欢迎您【蘑菇租房】','1','1');