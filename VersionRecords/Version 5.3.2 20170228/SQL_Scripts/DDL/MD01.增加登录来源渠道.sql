use mogoroomdb;
/*增加登录记录来源渠道*/

ALTER TABLE `user_loginlog`
MODIFY COLUMN `loginType`  int(11) NOT NULL COMMENT '登录类型(参考字典表组名:userType)' AFTER `loginAccount`,
ADD COLUMN `loginSource`  int(11) NULL COMMENT '登录来源渠道(参考字典表组名:loginSourceType)' AFTER `loginType`,
ADD COLUMN `channel`  int(11) NULL COMMENT '渠道(参考字典表组名:channel)' AFTER `loginSource`;


/*初始化数据用户类型*/
update user_loginlog set loginType = 4 where loginType = 1;
update user_loginlog set loginType = 0 where loginType = 2;


/*初始化登录记录渠道类型类型*/
update user_loginlog set loginSource = 102,channel = 4 where terminalType = '1' and loginType  in (0,7) and LENGTH(terminalId) = 36 and loginSource is null ;
update user_loginlog set loginSource = 101,channel = 4 where terminalType = '1' and loginType  in (0,7) and LENGTH(terminalId) != 36 and loginSource is null;
update user_loginlog set loginSource = 101,channel = 4 where terminalType = '1' and loginType  in (0,7) and terminalId is null and loginSource is null;

update user_loginlog set loginSource = 102,channel = 4 where terminalType not in ('1','2','3','4') and loginType  in (0,7) and LENGTH(terminalId) = 36 and loginSource is null;
update user_loginlog set loginSource = 101,channel = 4 where terminalType not in ('1','2','3','4') and loginType  in (0,7) and LENGTH(terminalId) != 36 and loginSource is null;

update user_loginlog set loginSource = 105,channel = 1 where terminalType = '1' and loginType  = 4 and terminalId like 'platform=And%' and loginSource is null;
update user_loginlog set loginSource = 106,channel = 1 where terminalType = '1' and loginType  = 4 and terminalId like 'platform=iOS%' and loginSource is null;
update user_loginlog set loginSource = 105,channel = 1 where terminalType = '1' and loginType  = 4 and terminalId is null and loginSource is null;

update user_loginlog set loginSource = 201,channel = 5 where terminalType = '2' and loginType  in (0,7) and loginSource is null;
update user_loginlog set loginSource = 202,channel = 9 where terminalType = '2' and loginType  = 4 and loginSource is null;

update user_loginlog set loginSource = 301,channel = 10 where terminalType = '3' and loginSource is null;
update user_loginlog set loginSource = 401,channel = 11 where terminalType = '4' and loginSource is null;

/*增加字典表登录来源渠道*/
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('loginSourceType-1', 'loginSourceType', '1', '101', '老房东APP安卓', '1', NULL, 'loginSourceType-1');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('loginSourceType-2', 'loginSourceType', '2', '102', '老房东APPIOS', '1', NULL, 'loginSourceType-2');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('loginSourceType-3', 'loginSourceType', '3', '103', '新房东APP安卓', '1', NULL, 'loginSourceType-3');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('loginSourceType-4', 'loginSourceType', '4', '104', '新房东APPIOS', '1', NULL, 'loginSourceType-4');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('loginSourceType-5', 'loginSourceType', '5', '105', '租客APP安卓', '1', NULL, 'loginSourceType-5');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('loginSourceType-6', 'loginSourceType', '6', '106', '租客APPIOS', '1', NULL, 'loginSourceType-6');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('loginSourceType-7', 'loginSourceType', '7', '201', '房东PC', '1', NULL, 'loginSourceType-7');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('loginSourceType-8', 'loginSourceType', '8', '202', '租客PC', '1', NULL, 'loginSourceType-8');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('loginSourceType-9', 'loginSourceType', '9', '301', '微信公众号', '1', NULL, 'loginSourceType-9');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('loginSourceType-10', 'loginSourceType', '10', '401', '支付宝服务窗', '1', NULL, 'loginSourceType-10');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('loginSourceType-11', 'loginSourceType', '11', '501', 'TP项目', '1', NULL, 'loginSourceType-11');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('loginSourceType-12', 'loginSourceType', '12', '601', '租客wap', '1', NULL, 'loginSourceType-12');

						
