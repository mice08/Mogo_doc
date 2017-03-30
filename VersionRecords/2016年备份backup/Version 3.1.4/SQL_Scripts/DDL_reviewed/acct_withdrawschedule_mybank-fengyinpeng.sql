 
use acct;

ALTER TABLE  `acct_withdrawschedule`   
  ADD COLUMN `fundchannel` INT(11) NOT NULL   COMMENT '出款资金渠道' AFTER `signs`;


UPDATE acct.`acct_withdrawschedule` SET fundChannel = 9;


DROP TABLE IF EXISTS `acct_withdrawschedule_mybank`;

CREATE TABLE `acct_withdrawschedule_mybank` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `bizNo` varchar(64) NOT NULL COMMENT '业务批次号',
  `bizDate` date NOT NULL COMMENT '业务日期',
  `sendCount` int(11) NOT NULL COMMENT '标示在一个业务日期内发送次数',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `status` int(11) NOT NULL COMMENT '状态(0:无效 1:文件已上传 2:文件已确认)',
  `fileName` varchar(128) NOT NULL COMMENT '文件名称',
  `totalCount` int(11) NOT NULL COMMENT '总笔数',
  `totalAmount` decimal(10,2) NOT NULL COMMENT '总金额',
  `uploadPath` varchar(128) NOT NULL COMMENT '上传目录',
  `batchState` varchar(10) DEFAULT NULL COMMENT '批处理状态(INIT:申请成功 PROCESSING:处理中 FINISH:处理完成)',
  `bizState` varchar(20) DEFAULT NULL COMMENT '业务状态(ACCEPTED SUCCESS PART_SUCCESS FAIL UNKNOWN)',
  `failCnt` int(10) DEFAULT NULL COMMENT '错误笔数',
  `failAmt` decimal(10,2) DEFAULT NULL COMMENT '错误总金额',
  `successCnt` int(11) DEFAULT NULL COMMENT '成功笔数',
  `successAmt` decimal(10,2) DEFAULT NULL COMMENT '成功总金额',
  `resultMd5` varchar(256) DEFAULT NULL COMMENT 'MD5',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `errorDesc` varchar(256) DEFAULT NULL COMMENT '错误原因描述',
  `extContext` varchar(256) DEFAULT NULL COMMENT '附加信息',
  `batchTransNo` varchar(256) DEFAULT NULL COMMENT '批次交易流水号',
  `signs` varchar(128) NOT NULL COMMENT '数据签名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4  comment='网商银行提现计划' ;
