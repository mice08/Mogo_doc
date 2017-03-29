/* Database name `mogoroomdb`，KA品牌对接一期-增加表及字段*/

use mogoroomdb;

/**品牌表增加品牌类型字段，区别优选品牌及KA品牌*/
ALTER TABLE `brand`   
  ADD COLUMN `brandType` TINYINT(1) DEFAULT 1  NOT NULL   COMMENT '品牌类型(1:优选品牌 2:KA品牌)' AFTER `id`;


/**业务变动，品牌与城市需要一对多，创建brand_city_rel表
 1.	预估将来表记录总数在1000条以下
 2.	每次读取量50条以内。
 3.	主要查询SQL： 
SELECT id,brandId,cityId FROM brand_city_rel where brandId = xxx;
SELECT id,brandId,cityId FROM brand_city_rel where cityId = xxx;

需要预先添加的索引字段brandId,cityId 
 */
CREATE TABLE `brand_city_rel` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `brandId` INT(11) NOT NULL COMMENT '品牌Id',
  `cityId` INT(11) NOT NULL COMMENT '城市Id',
  `valid` TINYINT(1) NOT NULL DEFAULT '1' COMMENT '状态，0为无效，1为有效',
  `status` INT(4) DEFAULT NULL COMMENT '业务状态',
  `createTime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` INT(11) NOT NULL COMMENT '创建人',
  `createByType` INT(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `updateTime` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` INT(11) DEFAULT NULL COMMENT '修改人',
  `updateByType` INT(11) DEFAULT NULL COMMENT '修改人类型(参考字典表组名:userType)',
  `soDoneCode` INT(32) DEFAULT NULL COMMENT '操作流水号',
  `remark` VARCHAR(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `brandId` (`brandId`),
  KEY `cityId` (`cityId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='品牌城市关系表'