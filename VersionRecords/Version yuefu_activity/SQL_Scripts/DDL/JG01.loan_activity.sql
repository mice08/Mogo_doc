/*  Database name `mogoroomdb`  金融月付活动相关表*/
use mogoroomdb;

/*
1、预估表容量:每年100条左右
2、每次读取量:1-20条
3、主要查询
  SELECT
    id,
    name,
    startTime,
    endTime,
    remark,
    status,
    valid,
    createTime,
    createBy,
    createByType,
    updateBy,
    updateTime,
    updateByType
  FROM
    loan_activity
  WHERE startTime >= '2017-04-13'
    AND endTime < '2017-04-14'
    AND actvType = 1010
    AND status = 1
    AND valid = 1
  ORDER BY createTime DESC
4、需要预先添加的索引字段：startTime, endTime
*/
CREATE TABLE `loan_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '金融活动表Id',
  `name` varchar(32) DEFAULT NULL COMMENT '活动名称',
  `actvType` int(11) DEFAULT NULL COMMENT '金融活动类型(1010:月付手续费折扣活动)',
  `startTime` datetime DEFAULT NULL COMMENT '活动开始时间',
  `endTime` datetime DEFAULT NULL COMMENT '活动结束时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '活动备注',
  `status` tinyint(4) DEFAULT NULL COMMENT '活动状态',
  `valid` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效 1:有效)',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createByType` int(11) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '修改人',
  `updateByType` int(11) DEFAULT NULL COMMENT '修改人类型',
  PRIMARY KEY (`id`),
  KEY `startTime` (`startTime`),
  KEY `endTime` (`endTime`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = '金融活动表';

/*
1、预估表容量:每年500条左右
2、每次读取量:1-20条
3、主要查询
  SELECT
    id,
    name,
    startTime,
    endTime,
    remark,
    status,
    valid,
    createTime,
    createBy,
    createByType
  FROM
    loan_activity_log
  WHERE actvId = 1
  ORDER BY createTime DESC
4、需要预先添加的索引字段：actvId
*/
CREATE TABLE `loan_activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '金融活动日志表Id',
  `actvId` int(11) NOT NULL DEFAULT '0' COMMENT '金融活动表Id',
  `name` varchar(32) DEFAULT NULL COMMENT '活动名称',
  `actvType` int(11) DEFAULT NULL COMMENT '金融活动类型(1010:月付手续费折扣活动)',
  `startTime` datetime DEFAULT NULL COMMENT '活动开始时间',
  `endTime` datetime DEFAULT NULL COMMENT '活动结束时间',
  `remark` varchar(128) DEFAULT NULL COMMENT '活动备注',
  `status` tinyint(4) DEFAULT NULL COMMENT '活动状态',
  `valid` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效 1:有效)',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createByType` int(11) DEFAULT NULL COMMENT '创建人类型',
  PRIMARY KEY (`id`),
  KEY `actvId` (`actvId`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = '金融活动日志表';

/*
1、预估表容量:每年5000条左右
2、每次读取量:1-20条
3、主要查询
	SELECT
    id,
    actvId,
    bizType,
    bizVal
	FROM
	  loan_activitydtl
	WHERE actvId = 1
	  AND actvType = 1
  	AND bizType = 1
    AND bizVal = 1
    AND valid = 1
4、需要预先添加的索引字段：actvId
*/
CREATE TABLE `loan_activitydtl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '金融活动详细表Id',
  `actvId` int(11) NOT NULL DEFAULT '0' COMMENT '活动表Id',
  `actvType` int(11) DEFAULT NULL COMMENT '金融活动类型(1010:月付手续费折扣活动)',
  `bizType` int(11) DEFAULT NULL COMMENT '活动相关类型(101000:发布城市 101001:参与资方 101002:折扣率(万分比) 101003:参与活动的申请)',
  `bizVal` int(11) DEFAULT NULL COMMENT '活动相关内容',
  `valid` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效 1:有效)',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createByType` int(11) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '修改人',
  `updateByType` int(11) DEFAULT NULL COMMENT '修改人类型',
  PRIMARY KEY (`id`),
  KEY `actvId` (`actvId`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = '金融活动详细表';

/*
1、预估表容量:每年5000条左右
2、每次读取量:1-20条
3、主要查询
  select
    loan_activity.createTime,
    loan_monthlypay_activity.city,
    loan_activity.name,
    loan_activity.startTime,
    loan_activity.endTime,
    loan_monthlypay_activity.loanChannel,
    loan_monthlypay_activity.discount,
    loan_activity.remark,
    loan_activity.status
  from
    loan_activity
  inner join loan_monthlypay_activity on loan_activity.id=loan_monthlypay_activity.actvId
  where loan_activity.startTime>='2017-04-15'
  and loan_activity.endTime<'2017-04-20'
  and exists (select 1 from loan_activitydtl where loan_activitydtl.actvId=loan_activity.id and bizType='101000' and bizVal=289)
  and exists (select 1 from loan_activitydtl where loan_activitydtl.actvId=loan_activity.id and bizType='101002' and bizVal=5000)
  and loan_activity.status=1
  and loan_activity.valid=1
  and loan_activity.name like '%活动名称%'
4、需要预先添加的索引字段：actvId
*/
CREATE TABLE `loan_monthlypay_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '金融月付活动表Id',
  `actvId` int(11) NOT NULL DEFAULT '0' COMMENT '活动表Id',
  `city` int(11) DEFAULT NULL COMMENT '活动相关类型-发布城市:101000',
  `loanChannel` int(11) DEFAULT NULL COMMENT '活动相关类型-参与资方:101001',
  `discount` int(11) DEFAULT NULL COMMENT '活动相关类型-折扣率:101002',
  PRIMARY KEY (`id`),
  KEY `actvId` (`actvId`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = '金融月付活动表';
