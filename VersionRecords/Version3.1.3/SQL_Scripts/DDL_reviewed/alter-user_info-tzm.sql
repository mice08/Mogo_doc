/* �޸�user_info/user_info_his����Ӹ��˹�����Ϣ */
use mogoroomdb;

ALTER TABLE user_info ADD COLUMN company varchar(50) DEFAULT NULL COMMENT '��λ����';

ALTER TABLE user_info ADD COLUMN companyAddress varchar(200) DEFAULT NULL COMMENT '��λ��ϸ��ַ';

ALTER TABLE user_info ADD COLUMN occupation int(11) DEFAULT NULL COMMENT '������ҵ';

ALTER TABLE user_info ADD COLUMN companTel varchar(50) DEFAULT NULL COMMENT '��˾�绰';

ALTER TABLE user_info ADD COLUMN position int(11) DEFAULT NULL COMMENT '����ְλ';


ALTER TABLE user_info_his ADD COLUMN company varchar(50) DEFAULT NULL COMMENT '��λ����';

ALTER TABLE user_info_his ADD COLUMN companyAddress varchar(200) DEFAULT NULL COMMENT '��λ��ϸ��ַ';

ALTER TABLE user_info_his ADD COLUMN occupation int(11) DEFAULT NULL COMMENT '������ҵ';

ALTER TABLE user_info_his ADD COLUMN companTel varchar(50) DEFAULT NULL COMMENT '��˾�绰';

ALTER TABLE user_info_his ADD COLUMN position int(11) DEFAULT NULL COMMENT '����ְλ';