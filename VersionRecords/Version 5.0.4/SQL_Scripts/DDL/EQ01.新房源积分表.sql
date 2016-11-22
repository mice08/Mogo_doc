/* Database name `mogoroomdb`, 房源评分表，之后会废弃flat_room_score表 */
USE mogoroomdb;
DROP TABLE IF EXISTS find_room_score;

/*==============================================================*/
/* Table: find_room_score                                   */
/*==============================================================*/
CREATE TABLE find_room_score (
  `id`                      INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `roomId`                  INT(11) NOT NULL COMMENT '房间ID',
  `scoreType`               VARCHAR(40) NOT NULL COMMENT '房源评分类型(参考字典表组名:roomScoreType)',
  `scoreNum`                DECIMAL(12,2) NOT NULL DEFAULT 0 COMMENT '房源评分分值',
  `valid`                   TINYINT(1) NOT NULL DEFAULT 1 COMMENT '逻辑删除状态 1:有效 0:无效',
  `createBy`                INT(11) NOT NULL COMMENT '创建人',
  `createByType`            INT(2) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `createTime`              DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy`                INT(11) NOT NULL COMMENT '修改人',
  `updateByType`            INT(2) NOT NULL COMMENT '修改人类型(参考字典表组名:userType)',
  `updateTime`              DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark`                  VARCHAR(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY(id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '房源评分表' ;