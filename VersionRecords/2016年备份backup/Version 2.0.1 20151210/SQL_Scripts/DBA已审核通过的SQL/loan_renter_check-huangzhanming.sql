/*  Database name `mogoroomdb` �����Ģ�������������*/ 
use mogoroomdb; 
 
CREATE TABLE `loan_renter_check` ( 
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Ģ�������������ID', 
  `loanContractId` int(11) NOT NULL COMMENT '�����ͬID',
  `checker` int(11)  NULL COMMENT '������',
  `loanChannel` tinyint(3) NULL COMMENT '������Դ��1��������2��Ӫ',
  `checkDesc` varchar(500)  NULL COMMENT '��������',
  `checkStatus` tinyint(1) NULL COMMENT '����״̬��0�ܾ���1ͬ��',
  `checkTime` datetime NOT NULL COMMENT '����ʱ��', 
  PRIMARY KEY (`id`) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ģ�������������';
