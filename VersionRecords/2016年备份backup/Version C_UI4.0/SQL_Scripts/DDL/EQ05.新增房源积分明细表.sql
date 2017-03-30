/* Database name `mogoroomdb`, 房源评分明細表，content中存储影响房源积分最小纬度的原始值，scoreContent存放各个大维度的分值 */
USE mogoroomdb;
DROP TABLE IF EXISTS find_roomscore_detail;

/*==============================================================*/
/* Table: find_roomscore_detail                                 */
/*==============================================================*/
CREATE TABLE find_roomscore_detail
(
   `id`                      INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
   `roomId`                  INT(11) NOT NULL COMMENT '房源ID',
   `content`                 VARCHAR(1024) DEFAULT '' COMMENT '计算房源积分各维度的json数据，两级json封装',
   `scoreContent`            VARCHAR(500) DEFAULT '' COMMENT '房源积分各维度分值json内容，只统计直接影响的大维度',
   `brandId`                 INT(11) DEFAULT -9999 COMMENT '品牌ID(品牌上下线时根据品牌ID更新json及积分)',
   `valid`                   TINYINT(1) NOT NULL DEFAULT 1 COMMENT '逻辑删除状态 1:有效 0:无效',
   `createBy`                INT(11) NOT NULL COMMENT '创建人',
   `createByType`            INT(2) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
   `createTime`              DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   `updateBy`                INT(11) NOT NULL COMMENT '修改人',
   `updateByType`            INT(2) NOT NULL COMMENT '修改人类型(参考字典表组名:userType)',
   `updateTime`              DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
   `remark`                  VARCHAR(255) DEFAULT '' COMMENT '备注',
   PRIMARY KEY (id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '房源积分明细表';