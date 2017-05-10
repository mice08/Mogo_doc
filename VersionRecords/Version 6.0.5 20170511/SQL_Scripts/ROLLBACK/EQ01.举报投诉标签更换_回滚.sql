/* Database name `mogoroomdb`，房间详情页-举报投诉标签更换，回滚sql */

use mogoroomdb;

DELETE FROM comm_dictionary WHERE groupName = 'roomComplain' AND keyPro = 7;
UPDATE comm_dictionary SET STATUS = 1 WHERE groupName = 'roomComplain' AND keyPro = 5;

DELETE FROM comm_dictionary WHERE groupName = 'scoreDtl' AND keyPro = 5;
