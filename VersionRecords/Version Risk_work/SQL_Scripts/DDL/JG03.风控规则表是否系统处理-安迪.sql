/*  Database name `mogoroomdb`  风控记规则表 */
use mogoroomdb;

ALTER TABLE `risk_rule`   
  ADD COLUMN `isSysprocess` TINYINT(1) DEFAULT 0 NULL COMMENT '是否系统处理(0:不是，1:是)';
