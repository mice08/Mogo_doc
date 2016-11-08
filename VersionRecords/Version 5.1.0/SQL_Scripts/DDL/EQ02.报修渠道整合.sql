/* Database name `mogoroomdb`。对报修渠道进行整合，修改supp_repair.repairOrigin字段描述*/

use mogoroomdb;

ALTER TABLE `supp_repair`   
  CHANGE `repairOrigin` `repairOrigin` INT(1) NULL   COMMENT '报修来源(参考字典表groupName=channel)';
