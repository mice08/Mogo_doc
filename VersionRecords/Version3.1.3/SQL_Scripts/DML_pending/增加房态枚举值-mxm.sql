use mogoroomdb;

begin;

-- 增加或者保留房态枚举值
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomOnlineStatus-房东上架', 'RoomOnlineStatus', 1, '1', '房东上架', 1, '房东上架' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomOnlineStatus' AND keyPro='1');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomOnlineStatus-房东下架', 'RoomOnlineStatus', 2, '2', '房东下架', 1, '房东下架' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomOnlineStatus' AND keyPro='2');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomMogoOnlineStatus-蘑菇上架', 'RoomMogoOnlineStatus', 1, '1', '蘑菇上架', 1, '蘑菇上架' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomMogoOnlineStatus' AND keyPro='1');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomMogoOnlineStatus-蘑菇下架', 'RoomMogoOnlineStatus', 2, '2', '蘑菇下架', 1, '蘑菇下架' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomMogoOnlineStatus' AND keyPro='2');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomVerifyStatus-待初审', 'RoomVerifyStatus', 1, '1', '待初审', 1, '待初审' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomVerifyStatus' AND keyPro='1');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomVerifyStatus-审核通过', 'RoomVerifyStatus', 2, '2', '审核通过', 1, '审核通过' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomVerifyStatus' AND keyPro='2');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomVerifyStatus-审核不通过', 'RoomVerifyStatus', 3, '3', '审核不通过', 1, '审核不通过' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomVerifyStatus' AND keyPro='3');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomVerifyStatus-待重审', 'RoomVerifyStatus', 4, '4', '待重审', 1, '待重审' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomVerifyStatus' AND keyPro='4');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomAvailableStatus-未占用', 'RoomAvailableStatus', 1, '1', '未占用', 1, '未占用' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomAvailableStatus' AND keyPro='1');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomAvailableStatus-待转客', 'RoomAvailableStatus', 2, '2', '待转客', 1, '待转客' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomAvailableStatus' AND keyPro='2');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomAvailableStatus-待租客确认转客', 'RoomAvailableStatus', 3, '3', '待租客确认转客', 1, '待租客确认转客' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomAvailableStatus' AND keyPro='3');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomAvailableStatus-待租客支付预定', 'RoomAvailableStatus', 4, '4', '待租客支付预定', 1, '待租客支付预定' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomAvailableStatus' AND keyPro='4');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomAvailableStatus-待租客确认预定单', 'RoomAvailableStatus', 5, '5', '待租客确认预定单', 1, '待租客确认预定单' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomAvailableStatus' AND keyPro='5');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomAvailableStatus-待房东审核预定单', 'RoomAvailableStatus', 6, '6', '待房东审核预定单', 1, '待房东审核预定单' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomAvailableStatus' AND keyPro='6');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomAvailableStatus-预定成功', 'RoomAvailableStatus', 7, '7', '预定成功', 1, '预定成功' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomAvailableStatus' AND keyPro='7');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomAvailableStatus-待房东确认签约', 'RoomAvailableStatus', 8, '8', '待房东确认签约', 1, '待房东确认签约' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomAvailableStatus' AND keyPro='8');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomAvailableStatus-待租客确认签约', 'RoomAvailableStatus', 9, '9', '待租客确认签约', 1, '待租客确认签约' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomAvailableStatus' AND keyPro='9');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomAvailableStatus-待租客支付签约', 'RoomAvailableStatus', 10, '10', '待租客支付签约', 1, '待租客支付签约' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomAvailableStatus' AND keyPro='10');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomAvailableStatus-已签约', 'RoomAvailableStatus', 11, '11', '已签约', 1, '已签约' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomAvailableStatus' AND keyPro='11');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)SELECT 'RoomAvailableStatus-已删除', 'RoomAvailableStatus', 12, '12', '已删除', 1, '已删除' FROM (SELECT 1)tmp WHERE NOT  EXISTS(SELECT * FROM comm_dictionary WHERE groupName='RoomAvailableStatus' AND keyPro='12');

commit;