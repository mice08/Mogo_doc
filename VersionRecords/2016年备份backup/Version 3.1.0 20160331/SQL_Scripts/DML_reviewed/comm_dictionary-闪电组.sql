/*初始化字典表*/
use mogoroomdb;


/*初始化orderType数据字典*/
INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('orderType-1','orderType','1','1','预约单','1','reserveOrder');

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('orderType-2','orderType','2','2','预定单','2','bookOrder');

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('orderType-3','orderType','3','3','签约单','3','signOrder');

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('orderType-4','orderType','4','4','退房申请单','4','surrenderOrder');

/*初始化退款业务来源数据字典*/

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('refundSourceType-1','refundSourceType','1','1','撤销预定','1','cancelReserve');

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('refundSourceType-2','refundSourceType','2','2','撤销签约-蘑菇宝审核失败','1','cancelSignedMogoBaoCheckFailure');

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('refundSourceType-3','refundSourceType','3','3','撤销签约-预定成功','1','cancelSignedReserveSucc');

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('refundSourceType-4','refundSourceType','4','4','退房','1','checkOut');

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('refundSourceType-5','refundSourceType','5','5','签约不通过-预定成功','1','signedFailureReserveSucc');

/*入住人与子账号用户类型数据字典*/
INSERT INTO comm_dictionary (code,groupName,sort,keyPro,value,status,fcode,enValue)
VALUES('userType-6','userType','6','6','入住人','1',NULL,'userType-6');

INSERT INTO comm_dictionary (code,groupName,sort,keyPro,value,status,fcode,enValue)
VALUES(	'userType-7','userType','7','7','子账号','1',NULL,'userType-7');