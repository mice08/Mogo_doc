/*�����ͬ����Ӷ���ID*/

use mogoroomdb;

alter table loan_contract add column subsId bigint(11) NULL COMMENT '����ID' after `prodType`;