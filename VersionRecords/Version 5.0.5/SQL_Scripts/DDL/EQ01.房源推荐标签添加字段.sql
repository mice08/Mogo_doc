/* Database name `mogoroomdb`�� ��Դ�Ƽ���ǩ������Ӹñ�ǩ������չʾ�ķ�Դ���� */

use mogoroomdb;

ALTER TABLE coms_hottab ADD COLUMN showNum INT NOT NULL DEFAULT 0 COMMENT 'չʾ����������0��������';

ALTER TABLE coms_hottab ADD COLUMN cssStyle VARCHAR(512) DEFAULT '' COMMENT 'չʾ������ʽ';

ALTER TABLE coms_hottab ADD COLUMN contextId INT DEFAULT 0 COMMENT '��ǩ�����ݵ�ID';

ALTER TABLE coms_context ADD COLUMN showNav TINYINT DEFAULT 1 COMMENT '�Ƿ���ʾ������Ĭ����ʾ';