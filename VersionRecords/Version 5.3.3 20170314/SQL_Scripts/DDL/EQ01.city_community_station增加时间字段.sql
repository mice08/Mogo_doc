/* Database name `mogoroomdb`, 小区与地铁站关系表增加新增和修改时间 */
USE mogoroomdb;

ALTER TABLE city_community_station ADD COLUMN createTime DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间';
ALTER TABLE city_community_station ADD COLUMN updateTime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间';