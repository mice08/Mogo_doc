use mogoroomdb;

/* ���֥�����ʾ״̬�ֶ� */
ALTER TABLE user_zhima_score ADD COLUMN displayStatus tinyint(1) NOT NULL DEFAULT 1 COMMENT '֥�����ʾ״̬(0:���� 1:��ʾ)';