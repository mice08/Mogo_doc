
 /**测试环境走这个SQL**/
use mogoroomdb;
set  @1 = (SELECT id FROM `comm_dictionary` WHERE CODE = 'MODULE_SignedOrder');
set  @2 = (SELECT id FROM `comm_dictionary` WHERE CODE = 'MODULE_ReservationOrder');
set  @3 = (SELECT id FROM `comm_dictionary` WHERE CODE = 'MODULE_OrderList');
set  @4 = (SELECT id FROM `comm_dictionary` WHERE CODE = 'MODULE_MyBill');
set  @5 = (SELECT id FROM `comm_dictionary` WHERE CODE = 'MODULE_MsgDetail');
set  @6 = (SELECT id FROM `comm_dictionary` WHERE CODE = 'MODULE_Login');
set  @7 = (SELECT id FROM `comm_dictionary` WHERE CODE = 'MODULE_BookOrder');
set  @8 = (SELECT id FROM `comm_dictionary` WHERE CODE = 'MODULE_AfterMarket');
set  @9 = (SELECT id FROM `comm_dictionary` WHERE CODE = 'MODULE_Account');
 
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('9','1',@9);
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('8','1',@8);
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('7','1',@7);
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('6','1',@6);
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('5','1',@5);
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('4','1',@4);
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('3','1',@3);
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('2','1',@2);
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('1','1',@1);

 UPDATE `mesg_news_record` SET jumpcode = '9' WHERE jumpCode = 'MODULE_SignedOrder';
 UPDATE `mesg_news_record` SET jumpcode = '8' WHERE jumpCode = 'MODULE_ReservationOrder';
 UPDATE `mesg_news_record` SET jumpcode = '7' WHERE jumpCode = 'MODULE_OrderList';
 UPDATE `mesg_news_record` SET jumpcode = '6' WHERE jumpCode = 'MODULE_MyBill';
 UPDATE `mesg_news_record` SET jumpcode = '5' WHERE jumpCode = 'MODULE_MsgDetail';
 UPDATE `mesg_news_record` SET jumpcode = '4' WHERE jumpCode = 'MODULE_Login';
 UPDATE `mesg_news_record` SET jumpcode = '3' WHERE jumpCode = 'MODULE_BookOrder';
 UPDATE `mesg_news_record` SET jumpcode = '2' WHERE jumpCode = 'MODULE_AfterMarket';
 UPDATE `mesg_news_record` SET jumpcode = '1' WHERE jumpCode = 'MODULE_Account';


 
/**生产环境和预发布环境走这个SQL**/
use mogoroomdb;

 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('1','1','854');
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('2','1','855');
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('3','1','858');
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('4','1','859');
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('5','1','860');
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('6','1','861');
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('7','1','862');
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('8','1','863');
 INSERT INTO `mesg_jump` (jumpCode,pageType,pageCode)  VALUES ('9','1','864');

 UPDATE `mesg_news_record` SET jumpcode = '9' WHERE jumpCode = '864';
 UPDATE `mesg_news_record` SET jumpcode = '8' WHERE jumpCode = '863';
 UPDATE `mesg_news_record` SET jumpcode = '7' WHERE jumpCode = '862';
 UPDATE `mesg_news_record` SET jumpcode = '6' WHERE jumpCode = '861';
 UPDATE `mesg_news_record` SET jumpcode = '5' WHERE jumpCode = '860';
 UPDATE `mesg_news_record` SET jumpcode = '4' WHERE jumpCode = '859';
 UPDATE `mesg_news_record` SET jumpcode = '3' WHERE jumpCode = '858';
 UPDATE `mesg_news_record` SET jumpcode = '2' WHERE jumpCode = '855';
 UPDATE `mesg_news_record` SET jumpcode = '1' WHERE jumpCode = '854';

