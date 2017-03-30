/* Database name `mogoroomdb`, 房东沟通记录表 */
USE mogoroomdb;
DROP TABLE IF EXISTS risk_landlord_chatrecord;

/*==============================================================*/
/* Table: risk_landlord_chatrecord                                   */
/*==============================================================*/
CREATE TABLE risk_landlord_chatrecord (
  `id`                      INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `landlordId`              INT(11) NOT NULL COMMENT '房东ID',
  `flatsId`                 INT(11) NOT NULL COMMENT '公寓ID',
  `roomId`                  INT(11) NOT NULL COMMENT '房间ID',
  `content`                 VARCHAR(255) DEFAULT NULL COMMENT '沟通记录',
  `valid`                   TINYINT(1) NOT NULL DEFAULT 1 COMMENT '逻辑删除状态 1:有效 0:无效',
  `createBy`                INT(11) NOT NULL COMMENT '创建人',
  `createTime`              DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy`                INT(11) NOT NULL COMMENT '修改人',
  `updateTime`              DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY(id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '房东沟通记录表' ;