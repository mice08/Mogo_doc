/* Database name `mogoroomdb`， 是否需要向租客微信/支付宝推送消息开关（确认租约消息、支付成功消息、账单提醒消息） */

use mogoroomdb;

INSERT INTO `comm_sysconfig` (`keyName`,`val`,`groupName`,`name`,`remark`,`updateTime`,`updateByType`,`updateBy`) VALUES('RENTEREMBED_MSG_SENDING_SWITCH','false','RENTER_WEIXIN_ALIPAY','向租客微信/支付宝推送消息开关','true表示发送，false表示不发送。消息类型有确认租约消息、支付成功消息、账单提醒消息。',now(),5,0);