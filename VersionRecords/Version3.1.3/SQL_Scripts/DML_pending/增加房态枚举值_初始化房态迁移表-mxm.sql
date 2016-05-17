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


-- 房态迁移表数据初始化
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(1,1,1,1011002,2);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(1,1,1,2011005,2);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(2,1,2,1011001,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(3,4,1,2011005,2);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(4,4,2,2011004,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(5,2,1,2011002,2);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(6,2,1,2011003,3);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(7,2,2,1011005,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(8,2,3,1011005,4);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(9,2,4,2011003,3);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(10,2,4,2011002,2);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(11,3,1,1001022,4);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(12,3,1,1001015,9);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(13,3,1,1011004,2);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(14,3,1,1011006,12);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(15,3,4,216001,6);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(16,3,4,1001021,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(17,3,4,1001019,5);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(18,3,5,216001,7);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(19,3,5,1001021,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(20,3,6,1001018,7);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(21,3,6,1001007,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(22,3,7,1001014,8);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(23,3,7,1001015,9);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(24,3,7,1001021,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(25,3,7,1001007,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(26,3,9,1001016,10);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(27,3,9,1001007,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(28,3,8,1001013,10);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(29,3,8,1001007,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(30,3,10,216002,11);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(31,3,10,1001021,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(32,3,10,1001007,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(33,3,2,2021001,3);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(34,3,2,2011001,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(35,3,3,2021002,2);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(36,3,3,2021003,11);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(37,3,11,1001020,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(38,3,11,1011007,1);
INSERT INTO flat_roomstatetrans(id, statusType, fromStatus, busiType, toStatus)VALUES(39,3,11,1001001,1);


commit;