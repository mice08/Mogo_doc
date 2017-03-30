use mogoroomdb;

UPDATE `comm_dictionary` SET `value`='/bookOrder/zhifubaoPayParam'  WHERE ( `code`='signature2001'and `groupName`='paySignature');
UPDATE `comm_dictionary` SET `value`='/bookOrder/weixinPayParam'  WHERE (`code`='signature3001' and `groupName`='paySignature');
UPDATE `comm_dictionary` SET `value`='/query/wechat/order'  WHERE (`code`='weixinPayStatus' and`groupName`='paySignature');