ALTER TABLE `city`
ADD COLUMN `logoUrl`  varchar(200) NOT NULL COMMENT '����logo�������б���ʾ��Сͼ��',
ADD COLUMN `bgMapUrl`  varchar(200) NOT NULL COMMENT '���б���ͼ(APP��ҳ��ʾ�ı�����ͼ)',
ADD COLUMN `lng` Double NOT NULL COMMENT '����',
ADD COLUMN `lat`  Double NOT NULL COMMENT 'γ��',
ADD COLUMN `domain`  varchar(200) NOT NULL COMMENT '������������bj��';