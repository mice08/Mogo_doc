/* Database name `mogoroomdb`, 通勤起终两点时间、距离基础数据表 */
USE mogoroomdb;
DROP TABLE IF EXISTS flat_commuting;

/*==============================================================*/
/* Table: flat_commuting                                   */
/*==============================================================*/
CREATE TABLE flat_commuting (
  `id`                      INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `origin_lng`              DECIMAL(7,4) DEFAULT NULL COMMENT '起点经度',
  `origin_lat`              DECIMAL(7,4) DEFAULT NULL COMMENT '起点纬度',
  `dest_lng`                DECIMAL(7,4) DEFAULT NULL COMMENT '终点经度',
  `dest_lat`                DECIMAL(7,4) DEFAULT NULL COMMENT '终点纬度',
  `commutingMode`           INT(1) COMMENT '通勤模式(1:步行 2:骑行 3:公交 4:驾车)',
  `duration`                INT(11) DEFAULT NULL COMMENT '通勤时间(单位:分钟)',
  `distance`                INT(11) DEFAULT NULL COMMENT '通勤起终间距离(单位:米)',
  `status`                  INT(1) COMMENT '状态(1:有效 0:无效)',
  `createBy`                INT(11) COMMENT '创建人',
  `createByType`            INT(2) COMMENT '创建人类型(参考字典表组名:userType)',
  `createTime`              DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL COMMENT '创建时间',
  `updateBy`                INT(11) COMMENT '修改人',
  `updateByType`            INT(2) COMMENT '修改人类型(参考字典表组名:userType)',
  `updateTime`              DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY(id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '通勤数据明细表' ;