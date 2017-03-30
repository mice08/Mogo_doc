/* Database name `mogoroomdb`, 房源访问记录表 */
USE mogoroomdb;
DROP TABLE IF EXISTS find_visit_record;

/*==============================================================*/
/* Table: find_visit_record                                 */
/*==============================================================*/
CREATE TABLE find_visit_record
(
   `id`                      INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
   `roomId`                  INT(11) NOT NULL COMMENT '房源ID',
   `phoneNo`                 VARCHAR(20) NOT NULL DEFAULT '-' COMMENT '联系电话',
   `channel`                 INT(2) NOT NULL COMMENT '渠道类型,关联字典表comm_dictionary值groupName=channel',
   `busiType`                VARCHAR(20) NOT NULL COMMENT '业务类型',
   `valid`                   TINYINT(1) NOT NULL DEFAULT 1 COMMENT '逻辑删除状态 1:有效 0:无效',
   `createBy`                INT(11) NOT NULL COMMENT '创建人',
   `createByType`            INT(2) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
   `createTime`              DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   `updateBy`                INT(11) NOT NULL COMMENT '修改人',
   `updateByType`            INT(2) NOT NULL COMMENT '修改人类型(参考字典表组名:userType)',
   `updateTime`              DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
   `remark`                  VARCHAR(255) DEFAULT '' COMMENT '备注',
   PRIMARY KEY (id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '访问记录表';