/* Database name `mogoroomdb`, 房源附属表，用于存放C端需要用到的一些字段，比如发布时间、月付标记等，后面考虑将房源积分、最低价等字段也移植过来 */
USE mogoroomdb;
DROP TABLE IF EXISTS find_room_attachment;

/*==============================================================*/
/* Table: find_room_attachment                                 */
/*==============================================================*/
CREATE TABLE find_room_attachment
(
   `id`                      INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
   `roomId`                  INT(11) NOT NULL COMMENT '房源ID',
   `publishTime`             DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
   `monthlyPay`              TINYINT(1) NOT NULL DEFAULT 0 COMMENT '月付标记 0:非月付  1:月付',
   `valid`                   TINYINT(1) NOT NULL DEFAULT 1 COMMENT '逻辑删除状态 1:有效 0:无效',
   `createBy`                INT(11) NOT NULL COMMENT '创建人',
   `createByType`            INT(2) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
   `createTime`              DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   `updateBy`                INT(11) NOT NULL COMMENT '修改人',
   `updateByType`            INT(2) NOT NULL COMMENT '修改人类型(参考字典表组名:userType)',
   `updateTime`              DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
   `remark`                  VARCHAR(255) DEFAULT '' COMMENT '备注',
   PRIMARY KEY (id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '房源附属表';