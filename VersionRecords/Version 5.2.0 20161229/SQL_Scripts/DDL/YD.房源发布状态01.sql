/*房东移动版APP房态图，修改表结构*/

use mogoroomdb;
ALTER TABLE `rsci_rschartinfo_stat` ADD COLUMN `publishFlag` TINYINT(1) NULL COMMENT '房源发布状态';
