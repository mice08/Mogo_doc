/* Database name `mogoroomdb`，房间详情页-举报投诉标签更换 */

use mogoroomdb;

INSERT INTO comm_dictionary (CODE, groupName, sort, keyPro, VALUE,STATUS, fcode,enValue) VALUES ('roomComplain-房东是中介', 'roomComplain', 5, 7, '房东是中介', 1, NULL, '房东是中介');
UPDATE comm_dictionary SET STATUS = 0 WHERE groupName = 'roomComplain' AND keyPro = 5;

INSERT INTO comm_dictionary (CODE, groupName, sort, keyPro, VALUE,STATUS, fcode,enValue) VALUES ('scoreDtl-房东是中介', 'scoreDtl', 5, 5, '房东是中介', 1, NULL, '房东是中介');
