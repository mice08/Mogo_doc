/*  Database name `mogoroomdb`  风控提现审核 */
use mogoroomdb;

/*
1、预估表容量:300-400条/天
2、每次读取量:在10条左右
3、主要查询
	SELECT
    w.id,
	w.createTime,
	w.doneCode,
	w.amount,
	CASE w.userType
WHEN 4 THEN
	r.realName
WHEN 0 THEN
	l.name
END 'username',
 CASE w.userType
WHEN 4 THEN
	r.cellphone
WHEN 0 THEN
	l.phone
END 'phone',
 w.bankId,
 w.bankCardNumber,
 w.bankName,
 w.bankAcctName,
 w.withdrawStatus,
 w.userType
FROM
	risk_withdrawexam w
LEFT JOIN user_renter r ON w.userId = r.id
AND w.userType = 4
LEFT JOIN user_landlord l ON w.userId = l.id
AND w.userType = 0

where  (r.cellphone like '1536%' or l.phone like '1536%')
AND (r.realName like '彭%' or l.name like '彭%')
AND w.doneCode =  12
AND w.bankCardNumber like '${po.bankCardNumber}%'
and w.withdrawStatus in ('DDCK','JJTX')
AND w.valid = 1
order by w.id desc
  需要预先添加的索引字段`userId`，doneCode
*/
CREATE TABLE `risk_withdrawexam` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) NOT NULL COMMENT '用户id',
  `userType` tinyint(2) NOT NULL COMMENT '用户类型',
  `doneCode` int(11) NOT NULL COMMENT '账务流水号',
  `amount` decimal(10,2) NOT NULL COMMENT '提现金额',
  `bankId` int(11) DEFAULT NULL COMMENT '银行ID',
  `bankName` varchar(25) NOT NULL COMMENT '收款银行',
  `bankAcctName` varchar(50) NOT NULL COMMENT '收款人姓名',
  `bankCardNumber` varchar(32) NOT NULL COMMENT '收款银行卡号',
  `withdrawStatus` char(4) NOT NULL COMMENT '提现状态(DDSH:等待审核 DDCK:等待出款 JJTX:拒绝提现 CXTX:撤销提现 CKZA:出款中 CKCG:出款成功  CKSB:出款失败)',
  `valid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效 1:有效)',
  `outTime` datetime  COMMENT '出款时间',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) DEFAULT NULL COMMENT '修改人类型',
  `soDoneCode` int(32) NOT NULL COMMENT '操作流水号',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`) USING BTREE,
  KEY `doneCode` (`doneCode`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='提现审核表';


/*
1、预估表容量:600-800条/天
2、每次读取量:在3条左右
3、主要查询

SELECT
	id,
	riskWithdrawexamId,
	operType,
	operResult,
	remark,
	valid,
	createTime,
	createBy,
	createByType,
	updateTime,
	updateBy,
	updateByType,
	soDoneCode
FROM
	risk_withdrawexam_operlog
where riskWithdrawexamId = 1
AND valid = 1
ORDER BY
	id DESC

  需要预先添加的索引字段`riskWithdrawexamId`
*/
CREATE TABLE `risk_withdrawexam_operlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `riskWithdrawexamId` int(11) NOT NULL COMMENT '用户提现审核表id',
  `operType` tinyint(1) NOT NULL COMMENT '操作类型(1:提交出款 2:人工审核 3:风控规则审核 4:人工撤销)',
  `operResult` tinyint(1) NOT NULL COMMENT '操作结果(11:成功 12:失败 21:通过 22:拒绝 30:等待审核 31:通过 41:撤销成功)',
  `remark` varchar(127) COMMENT '备注',
  `valid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效 1:有效)',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) DEFAULT NULL COMMENT '修改人类型',
  `soDoneCode` int(32) NOT NULL COMMENT '操作流水号',
  PRIMARY KEY (`id`),
  KEY `riskWithdrawexamId` (`riskWithdrawexamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='提现审核操作记录表';