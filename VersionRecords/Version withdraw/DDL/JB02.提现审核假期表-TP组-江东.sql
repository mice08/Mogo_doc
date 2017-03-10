/*  Database name `mogoroomdb`  自定义的假期，不同与法定假期 */
use mogoroomdb;

/*
1、预估表容量:10-20条/年
2、每次读取量:1个
3、主要查询
   select * from risk_withdraw_holiday where holiday='2017-03-01' and valid=1;
*/
CREATE TABLE `risk_withdraw_holiday` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `holiday` date NOT NULL COMMENT '假期',
  `valid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效 1:有效)',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) DEFAULT NULL COMMENT '修改人类型',
  `soDoneCode` int(32) NOT NULL COMMENT '操作流水号',
  PRIMARY KEY (`id`),
  KEY `holiday` (`holiday`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='提现审核假期表';