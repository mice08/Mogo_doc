/*
更改告警表名称

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015年8月10日 18:09:18
Author ：zhegnliangjie
*/    
	
ALTER TABLE  supp_userWarnRelation RENAME TO opex_userWarnRelation;
ALTER TABLE  supp_warn RENAME TO opex_warn;
ALTER TABLE  supp_warnAction RENAME TO opex_warnAction;
ALTER TABLE  supp_warnDetail RENAME TO opex_warnDetail;
ALTER TABLE  supp_warnType RENAME TO opex_warnType;
ALTER TABLE  supp_warnTypeRelation RENAME TO opex_warnTypeRelation;