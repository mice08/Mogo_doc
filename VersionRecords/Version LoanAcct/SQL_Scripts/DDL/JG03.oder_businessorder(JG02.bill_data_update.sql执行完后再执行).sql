/*创建金融还款计划表*/

use mogoroomdb;
/*数据更新后再执行*/
ALTER TABLE `oder_businessorder`  CHANGE `updatedTime` `updatedTime` TIMESTAMP DEFAULT CURRENT_TIMESTAMP   NULL  COMMENT '更新时间';