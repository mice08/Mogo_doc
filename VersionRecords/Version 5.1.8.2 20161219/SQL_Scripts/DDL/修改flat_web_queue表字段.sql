/* Database name `mogoroomdb`， 修改flat_web_queue表的createTime字段+增加四个字段 */

USE mogoroomdb;

ALTER TABLE flat_web_queue MODIFY createTime DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间';

ALTER TABLE flat_web_queue ADD COLUMN valid TINYINT(1) NOT NULL DEFAULT '1' COMMENT '逻辑删除状态(1:有效 0:无效)';
ALTER TABLE flat_web_queue ADD COLUMN STATUS INT(1) NOT NULL DEFAULT 1 COMMENT '处理状态(1:成功 0:失败)';
ALTER TABLE flat_web_queue ADD COLUMN retryNum INT(1) NOT NULL DEFAULT 0 COMMENT '重试次数(最多3次)';
ALTER TABLE flat_web_queue ADD COLUMN updateTime DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间';