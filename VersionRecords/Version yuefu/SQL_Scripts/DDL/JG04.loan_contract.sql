/*贷款合同表添加订购ID*/

use mogoroomdb;

alter table loan_contract add column subsId bigint(11) NULL COMMENT '订购ID' after `prodType`;