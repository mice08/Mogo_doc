use mogoroomdb;
CREATE TABLE `othr_apply_leaguer` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `channel` int(2) NOT NULL COMMENT '��Դ���ο��ֵ��groupName=channel',
  `cityId` INT(11) NOT NULL COMMENT '��������',
  `roomNum` INT(11) NOT NULL COMMENT '��Դ����',
  `contacter` VARCHAR(20) NOT NULL COMMENT '��ϵ��',
  `contactsPhone` VARCHAR(50) NOT NULL COMMENT '��ϵ�˵绰(���ų�����������ϵ��ʽ)',
  `remark` VARCHAR(200) NULL COMMENT '��ע',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���������Ϣ��';