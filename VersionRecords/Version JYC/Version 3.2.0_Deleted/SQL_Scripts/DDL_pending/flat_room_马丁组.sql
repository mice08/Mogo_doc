/* Database name `mogoroomdb`�� �����������ʷ����ӱ����ֶ� */

use mogoroomdb;

ALTER TABLE `flat_room`  ADD COLUMN `alias`  VARCHAR(16) NULL   COMMENT '�������' ;


ALTER TABLE `flat_room_his`  ADD COLUMN `alias`  VARCHAR(16) NULL   COMMENT '�������' ;