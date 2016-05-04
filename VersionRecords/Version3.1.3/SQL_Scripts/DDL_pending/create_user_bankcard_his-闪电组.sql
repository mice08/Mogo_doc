/**����user_bankcard��loan_renter_contract��ʷ��**/

USE mogoroomdb;

CREATE TABLE user_bankcard_his (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  bankcardId INT(11) NOT NULL COMMENT '���п�ID',
  userType int(11) DEFAULT NULL COMMENT '�û�����(1����� 2��ְҵ����)',
  userId int(11) DEFAULT NULL COMMENT '�û�ID',
  realName varchar(16) DEFAULT NULL COMMENT '��ʵ����',
  IDNumber varchar(32) DEFAULT NULL COMMENT '���֤����',
  bankId int(11) DEFAULT NULL COMMENT '����ID',
  bankName varchar(16) DEFAULT NULL COMMENT '��������',
  bankType varchar(16) DEFAULT NULL COMMENT '������������',
  bankCardNumber varchar(32) DEFAULT NULL COMMENT '���п�����',
  cellPhoneNum varchar(16) DEFAULT NULL COMMENT '�ֻ�����',
  status int(11) DEFAULT '1' COMMENT '����״̬',
  updateTime timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  createTime datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  remark varchar(128) DEFAULT NULL COMMENT '��ע',
  bank_code varchar(32) DEFAULT NULL COMMENT '���б��',
  bank_branch varchar(32) DEFAULT NULL COMMENT '֧������',
  province varchar(16) DEFAULT NULL COMMENT 'ʡ',
  city varchar(16) DEFAULT NULL COMMENT '����',
  card_type varchar(16) DEFAULT NULL COMMENT '������',
  employ int(11) DEFAULT NULL COMMENT '�Ƿ�����ʹ��״̬1ʹ����0��δʹ��',
  ciphertext varchar(50) DEFAULT NULL COMMENT '����',
  isCorp int(2) DEFAULT NULL COMMENT '���п�������(0:���� 1:��˾)',
  operType CHAR(1) NOT NULL COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='���п���ʷ��';



CREATE TABLE loan_renter_contract_his (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  loanRenterContractId INT(11) NOT NULL COMMENT '�����ͬID',
  renterId int(11) NOT NULL COMMENT '���',
  roomId int(11) NOT NULL COMMENT '����',
  infoId int(11) NOT NULL COMMENT '������Ϣ',
  contractno varchar(50) NOT NULL COMMENT '��ͬ��',
  channel tinyint(3) NOT NULL COMMENT '������Դ',
  status tinyint(3) NOT NULL COMMENT '��ͬ״̬',
  createTime timestamp NULL DEFAULT NULL COMMENT '����ʱ��',
  updateTime timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  loantime datetime DEFAULT NULL COMMENT '�ſ�ʱ��',
  landlordId int(11) NOT NULL COMMENT '����',
  applyamt decimal(12,2) NOT NULL COMMENT '������',
  updateBy int(11) DEFAULT NULL COMMENT '�޸���',
  updateByType int(2) DEFAULT NULL COMMENT '�޸�������(�ο��ֵ��groupName=userType)',
  confirmer int(11) DEFAULT NULL COMMENT '������λȷ����',
  confirmTime datetime DEFAULT NULL COMMENT '������λȷ��ʱ��',
  retcode varchar(45) DEFAULT NULL COMMENT '�Ŵ�ƽ̨����������',
  errmsg varchar(150) DEFAULT NULL COMMENT '�Ŵ�ƽ̨����������',
  operType CHAR(1) NOT NULL COMMENT '����ʷ��¼����ʱ�Ĳ�������(A:���� U:���� D:ɾ��)',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='�����ͬ��ʷ��';
