/* Database name `mogoroomdb`， 合同状态为"签约成功"且签约方式为"补录租约"的合同的confirmDate初始化为上线当天 */

use mogoroomdb;

update cntr_salecontract set confirmDate=NOW() where turnStrtus=2;