/** Database name `mogoroomdb`， 微信公众号/支付宝服务窗 消息体推送开关设置为打开状态 */

use mogoroomdb;

UPDATE comm_sysconfig SET val='true' WHERE keyName='RENTEREMBED_MSG_SENDING_SWITCH' AND groupName='RENTER_WEIXIN_ALIPAY';