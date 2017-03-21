/*合同-CA记录表*/
use mogoroomdb;
/*  创建cntr_salecontract_ca表
1.	预估三个月表容量将达到1W条记录
2.	每次读取量1条。
3.	主要查询SQL： 
		SELECT * FROM cntr_salecontract_ca where contractId = ? and valid = 1;
 	  需预先添加索引contractId,contractCode,landlordId
*/
CREATE TABLE `cntr_salecontract_ca` (
`id`  bigint NOT NULL AUTO_INCREMENT ,
`contractId`  bigint NOT NULL COMMENT '合同id' ,
`contractCode`  varchar(100) NULL COMMENT '合同编号(供应商编号+CA合同编号)' ,
`landlordId`  bigint NOT NULL COMMENT '房东id' ,
`landlordSign`  varchar(100) NULL COMMENT '房东电子签名' ,
`landlordSignDate`  datetime NULL COMMENT '房东(甲方)签名时间' ,
`renterId`  bigint NOT NULL COMMENT '租客id' ,
`renterSign`  varchar(100) NULL COMMENT '租客(乙方)签名' ,
`renterSignDate`  datetime NULL COMMENT '租客(乙方)签名时间' ,
`createTime`  datetime NOT NULL COMMENT '创建时间' ,
`createBy`  bigint NOT NULL COMMENT '创建人id' ,
`createByType`  int NOT NULL COMMENT '创建人用户类型' ,
`signDate`  datetime NULL COMMENT '签约(完成)时间' ,
`archiveStatus`  tinyint(1) NOT NULL DEFAULT 0 COMMENT '存档状态(0:未归档 1:已存档 2:zip已存档 3:全部存档)' ,
`status`  tinyint(1) NOT NULL DEFAULT 1 COMMENT 'ca状态(0:初始 1:创建 2:甲方签名 3:乙方签名 4:双方签署生效)' ,
`valid`  tinyint(1) NOT NULL DEFAULT 1 COMMENT '数据有效性(0:无效 1:有效)' ,
PRIMARY KEY (id),
INDEX `IDX_CONTRACTID` (`contractId`) USING BTREE ,
UNIQUE INDEX `IDX_CONTRACTCODE` (`contractCode`) USING HASH ,
INDEX `IDX_LANDLORDID` (`landlordId`) USING BTREE 
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='电子合同-CA信息';
