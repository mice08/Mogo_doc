/* Database name `mogoroomdb`�� �޸��������ʱ��Ĭ��ֵ */

use mogoroomdb;

ALTER TABLE `comm_suggestion` MODIFY COLUMN `createTime`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '���ʱ��' AFTER `proposerPhone`;
