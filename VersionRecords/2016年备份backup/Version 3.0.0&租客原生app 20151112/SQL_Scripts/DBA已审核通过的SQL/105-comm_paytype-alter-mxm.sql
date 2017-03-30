use mogoroomdb;

INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)VALUES ('PayTypeGroup-1', 'PayTypeGroup', 1, '1', '付款方式1', 1, 'PayType1');
INSERT INTO comm_dictionary(  code  , `groupName`  , sort  , `keyPro`  , value  , status  , `enValue`)VALUES ('PayTypeGroup-2', 'PayTypeGroup', 2, '2', '付款方式2', 1, 'PayType2');

ALTER TABLE `comm_paytype`
ADD COLUMN `payTypeGroup`  tinyint NULL COMMENT '付款方式所属的组(参考字典表组名PayTypeGroup)' AFTER `finProdType`;


