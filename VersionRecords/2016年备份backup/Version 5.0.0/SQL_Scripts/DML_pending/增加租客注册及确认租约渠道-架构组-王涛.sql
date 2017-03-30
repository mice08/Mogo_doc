/* Database name `mogoroomdb` ,添加微信公众号、支付宝服务窗的字典 */
use mogoroomdb;

insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('channel-10','channel','10','10','微信公众号','1',NULL,'wechat_official_accounts');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('channel-11','channel','11','11','支付宝服务窗','1',NULL,'alipay_service_window');

insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('`regChannelDtl-48','regChannelDtl','48','48','微信公众号','1',NULL,'wechat_official_accounts');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('`regChannelDtl-49','regChannelDtl','49','49','支付宝服务窗','1',NULL,'alipay_service_window');
