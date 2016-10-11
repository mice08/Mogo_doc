/*增加风控的相关枚举*/
USE mogoroomdb;

BEGIN;

DELETE FROM comm_dictionary WHERE groupName IN ('riskIdentifyPhase','riskLevel','riskDataType','riskDataValid','riskListType');

/*识别环节或侦测环节*/ 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskIdentifyPhase-1','riskIdentifyPhase','1','1','资质审核','1',NULL,'riskIdentifyPhase-1');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskIdentifyPhase-2','riskIdentifyPhase','2','2','订单审核','1',NULL,'riskIdentifyPhase-2');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskIdentifyPhase-3','riskIdentifyPhase','3','3','租客回访','1',NULL,'riskIdentifyPhase-3');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskIdentifyPhase-4','riskIdentifyPhase','4','4','房东贷后回访','1',NULL,'riskIdentifyPhase-4');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskIdentifyPhase-5','riskIdentifyPhase','5','5','其他','1',NULL,'riskIdentifyPhase-5');


/*风险等级*/
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskLevel-1','riskLevel','1','1','低','1',NULL,'riskLevel-1');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskLevel-2','riskLevel','2','2','中','1',NULL,'riskLevel-2');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskLevel-3','riskLevel','3','3','高','1',NULL,'riskLevel-3');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskLevel-4','riskLevel','4','4','待定','1',NULL,'riskLevel-4');


/*数据类型*/
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskDataType-1','riskDataType','1','1','房东ID','1',NULL,'riskDataType-1');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskDataType-2','riskDataType','2','2','手机号','1',NULL,'riskDataType-2');


/*名单状态*/
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskDataValid-1','riskDataValid','1','1','生效','1',NULL,'riskDataValid-1');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskDataValid-2','riskDataValid','2','2','失效','1',NULL,'riskDataValid-2');

/*名单类型*/
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskListType-1','riskListType','1','1','黑名单','1',NULL,'riskListType-1');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
VALUES('riskListType-2','riskListType','2','2','灰名单','1',NULL,'riskListType-2');

COMMIT;


