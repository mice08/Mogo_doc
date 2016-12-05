/* Database name `mogoroomdb`， 添加字典表值 */

use mogoroomdb;

INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('signature2001', 'paySignature', '1', 'yes', 'http://pay.api.mogoroom.com/mogoroom-payapi/bookOrder/zhifubaoPayParam', '1', NULL, '支付宝签名地址');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('signature3001', 'paySignature', '2', 'yes', 'http://pay.api.mogoroom.com/mogoroom-payapi/bookOrder/weixinPayParam', '1', NULL, '微信支付签名地址');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('weixinPayStatus', 'paySignature', '3', 'yes', 'http://pay.api.mogoroom.com/mogoroom-payapi/query/wechat/order', '1', NULL, '微信验证支付结果');