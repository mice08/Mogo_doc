/*��������Ģ�����ܣ���Ԣ���ͱ���ӽ��ܡ�Ģ������*/
use mogoroomdb;

ALTER TABLE `flat_room` ADD COLUMN `mogoIntro` VARCHAR (255) NULL COMMENT 'Ģ����������' AFTER `intro`;

ALTER TABLE `flat_room_his` ADD COLUMN `mogoIntro` VARCHAR (255) NULL COMMENT 'Ģ����������' AFTER `intro`;

ALTER TABLE `flat_flats_prototype` ADD COLUMN `intro` VARCHAR (255) NULL COMMENT '����',
 ADD COLUMN `mogoIntro` VARCHAR (255) NULL COMMENT 'Ģ������';

ALTER TABLE `flat_flats_prototype_his` ADD COLUMN `intro` VARCHAR (255) NULL COMMENT '����',
 ADD COLUMN `mogoIntro` VARCHAR (255) NULL COMMENT 'Ģ������';