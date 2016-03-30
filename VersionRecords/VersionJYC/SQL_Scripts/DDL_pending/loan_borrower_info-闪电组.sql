/*  Database name `mogoroomdb` ���½�������ر�*/
use mogoroomdb;
 
/*gbw ��������Ϣ��*/
DROP TABLE IF EXISTS loan_borrower_info;
CREATE TABLE loan_borrower_info
(
   id                   INT(11) AUTO_INCREMENT COMMENT '����id ������',
   tid                  INT(11) NOT NULL COMMENT 'user_info_his �� tid',
   userName             VARCHAR(32) NOT NULL COMMENT '���������',
   gender               INT(1) COMMENT '�Ա�: (0:Ů 1:��)',
   idCard               VARCHAR(50) NOT NULL COMMENT '���֤����',
   addressDetails       VARCHAR(128) COMMENT '��ϸסլ��ַ',
   mobile               VARCHAR(20) NOT NULL COMMENT '������ֻ���',
   married              INT(1) COMMENT '����״��',
   debitcard            VARCHAR(50) NOT NULL COMMENT '��ǿ�����',
   debitbank            VARCHAR(8) NOT NULL COMMENT '��ǿ�������',
   provinceId           INT(11) COMMENT 'ʡ������ (�ο��ֵ��:loan_district_mapping ����:provienceId)',
   cityId               INT(11) COMMENT '�м����� (�ο��ֵ��:loan_district_mapping ����:cityId)',
   districtId           INT(11) COMMENT '�������� (�ο��ֵ��:loan_district_mapping ����:districtId)',
   picGroupId       INT(11) COMMENT 'comm_picture_group �� id ͼƬ���� certfirstimg-���֤�����գ�certsecondimg-���֤�����գ�nowphoto-�ֳ����֤�գ�groupPhoto-��ͺͷ� ������·��',
   loanChannel          INT(1) NOT NULL COMMENT '������Դ �ο��ֵ�� loan_channel(1:������ 2:Ģ�� 3:���в�)', 
   createTime           DATETIME COMMENT '����ʱ��',
   updateTime           DATETIME COMMENT '����ʱ��',
   PRIMARY KEY (id)
)ENGINE = INNODB COMMENT='��������Ϣ��';

/*gbw �����ͬ��ϸ��*/
DROP TABLE IF EXISTS loan_contract;
CREATE TABLE loan_contract
(
   id                   INT(11)  AUTO_INCREMENT COMMENT '����id ������ ',
   borrowerInfoId       INT(11) NOT NULL COMMENT 'loan_borrower_info id',
   signedOrderId        INT(11) NOT NULL COMMENT 'ǩԼ�� id', 
   orderNumber          VARCHAR(50) COMMENT 'Ģ�������ţ�ͬһ��ǩԼ�������ύ����Ҫ�����µ������',
   contractNumber        VARCHAR(50) COMMENT '�ʷ���ͬ�ţ��ʷ��ṩ',
   outerBusinessKey     VARCHAR(50) COMMENT '�ʷ��Ĳ�Ʒ������Ψһ��',
   applyAmount          DECIMAL(12,2) NOT NULL COMMENT '�����ܽ��',
   loanStartDate        DATE NOT NULL COMMENT '������ʼ��',
   period               INT(4) NOT NULL COMMENT '��������',           
   periodStep           INT(4) COMMENT '�������ڵ�λ(5:��)',
   workFlowStatus       INT(3) COMMENT '��ͬ״̬(4:����� 8:��֤ʧ�� 12:���ͨ�� 16:���ʧ�� 20:�ſ�ɹ� 24:��ǰ���� 28:��ֹ��ͬ)',
   mogoStatus           INT(3) COMMENT 'mogo״̬(8:Ģ�����ͨ�� 12:Ģ�����ʧ��)',
   lenderStatus         INT(3) COMMENT '�ʷ�״̬(0:����������� 4:�����ڲ���֤ʧ�� 8:���ϵ�������֤ʧ��)',
   approver             INT(11) COMMENT '��������mogo�����(��Ȼ��Ա��)',
   approvalTime         DATETIME COMMENT '��������mogo���ʱ��',
   fundReceivedTime     DATETIME COMMENT '�ʷ��ſ�ʱ��',
   fundConfirmer            INT(11) COMMENT '������λȷ����(��Ȼ��Ա��)',
   fundConfirmTime          DATETIME COMMENT '������λȷ��ʱ��',
   errmsg               VARCHAR(150) COMMENT '�����������쳣��Ϣ����',
   loanChannel          INT(3) NOT NULL COMMENT '������Դ �ο��ֵ�� loan_channel(1:������ 2:Ģ�� 3:���в�)',               
   PRIMARY KEY (id)
)ENGINE = INNODB COMMENT='�����ͬ��ϸ��, ������Ҫ������Ʒ���';

/*gbw �����ͬ��־��*/
DROP TABLE IF EXISTS loan_contract_logs;
CREATE TABLE loan_contract_logs
(
   id                   INT(11)  AUTO_INCREMENT COMMENT '����id ������ ',
   loanContractId       INT(11) NOT NULL COMMENT 'loan_contract id',  
   soDoneCode           INT(11) NOT NULL COMMENT 'comm_business_record id',
   workFlowStatus       INT(3) COMMENT '��ͬ״̬(4:����� 8:��֤ʧ�� 12:���ͨ�� 16:���ʧ�� 20:�ſ�ɹ� 24:��ǰ���� 28:��ֹ��ͬ)',
   mogoStatus           INT(3) COMMENT 'mogo״̬(8:Ģ�����ͨ�� 12:Ģ�����ʧ��)',
   lenderStatus         INT(3) COMMENT '�ʷ�״̬(0:����������� 4:�����ڲ���֤ʧ�� 8:���ϵ�������֤ʧ��)',
   createTime           DATETIME COMMENT '����ʱ��',
   errmsg               VARCHAR(150) COMMENT '�����������쳣��Ϣ����',
   PRIMARY KEY (id)
)ENGINE = INNODB COMMENT='�����ͬ��־��, ÿ�κ�ͬ״̬�����仯��Ҫ���ɴ˱�';

On 2016��03��30�� 13:54, gbw@mogoroom.com wrote:
���ܣ�

ע���޸Ĺ��ˣ��㽨һ�±�ɣ�

/*gbw ��������Ϣ��*/
DROP TABLE IF EXISTS loan_borrower_info;
CREATE TABLE loan_borrower_info
(
   id                   INT(11) AUTO_INCREMENT COMMENT '����id �� ����',
   tid                  INT(11) NOT NULL COMMENT 'user_info_his �� tid',
   userName             VARCHAR(32) NOT NULL COMMENT '���������',
   gender               INT(1) COMMENT '�Ա�: (0:Ů 1:��)',
   idCard               VARCHAR(50) NOT NULL COMMENT '���֤����',
   addressDetails       VARCHAR(128) COMMENT '��ϸסլ��ַ',
   mobile               VARCHAR(20) NOT NULL COMMENT '������ֻ���',
   married              INT(1) COMMENT '����״��',
   debitcard            VARCHAR(50) NOT NULL COMMENT '��ǿ�����',
   debitbank            VARCHAR(8) NOT NULL COMMENT '��ǿ�������',
   provinceId           INT(11) COMMENT 'ʡ������ (�ο��ֵ� ��:loan_district_mapping ����:provienceId),
   cityId               INT(11) COMMENT '�м����� (�ο��ֵ� ��:loan_district_mapping ����:cityId)',
   districtId           INT(11) COMMENT '�������� (�ο��ֵ� ��:loan_district_mapping ����:districtId)',
   picGroupId       INT(11) COMMENT 'comm_picture_group �� id ͼ Ƭ���� certfirstimg-���֤�����գ�certsecondimg-���֤�����գ�nowphoto-�ֳ����֤ �գ�groupPhoto-��ͺͷ� ������·��',
   loanChannel          INT(1) NOT NULL COMMENT '������Դ �ο��ֵ� �� loan_channel(1:������ 2:Ģ�� 3:���в�)', 
   createTime           DATETIME COMMENT '����ʱ��',
   updateTime           DATETIME COMMENT '����ʱ��',
   PRIMARY KEY (id)
)ENGINE = INNODB COMMENT='��������Ϣ��';

/*gbw �����ͬ��ϸ��*/
DROP TABLE IF EXISTS loan_contract;
CREATE TABLE loan_contract
(
   id                   INT(11)  AUTO_INCREMENT COMMENT '���� id ������ ',
   borrowerInfoId       INT(11) NOT NULL COMMENT 'loan_borrower_info id',
   signedOrderId        INT(11) NOT NULL COMMENT 'ǩԼ�� id', 
   orderNumber          VARCHAR(50) COMMENT 'Ģ�������ţ�ͬһ��ǩԼ�������ύ�� ��Ҫ�����µ������',
   contractNumber        VARCHAR(50) COMMENT '�ʷ���ͬ�ţ��ʷ��ṩ',
   outerBusinessKey     VARCHAR(50) COMMENT '�ʷ��Ĳ�Ʒ������Ψһ��',
   applyAmount          DECIMAL(12,2) NOT NULL COMMENT '�����ܽ�� ',
   curcode              INT(3) COMMENT '�������',
   loanStartDate        DATE NOT NULL COMMENT '������ʼ��',
   period               INT(4) NOT NULL COMMENT '�������� ',           
   periodStep            INT(4) COMMENT '�������ڵ�λ��JYC��mogo��ʱ֧���� ',          
   workFlowStatus       INT(3) COMMENT '��ͬ״̬(4:����� 8:��֤ʧ�� 12:�� ��ͨ�� 16:���ʧ�� 20:�ſ�ɹ� 24:��ֹ��ͬ 28:��ֹ��ͬ)',
   mogoStatus           INT(3) COMMENT 'mogo״̬(8:Ģ�����ͨ�� 12:Ģ���� ��ʧ��)',
   lenderStatus         INT(3) COMMENT '�ʷ�״̬(0:����������� 4:�����ڲ���֤ ʧ�� 8:���ϵ�������֤ʧ��)',
   approver             INT(11) COMMENT '��������mogo�����',
   approvalTime         DATETIME COMMENT '��������mogo���ʱ��',
   fundReceivedTime     DATETIME COMMENT '�ʷ��ſ�ʱ��',
   fundConfirmer            INT(11) COMMENT '������λȷ����',
   fundConfirmTime          DATETIME COMMENT '������λȷ��ʱ��',
   errmsg               VARCHAR(150) COMMENT '�����������쳣��Ϣ����',
   loanChannel          INT(3) NOT NULL COMMENT '������Դ �ο��ֵ� �� loan_channel(1:������ 2:Ģ�� 3:���в�)',               
   PRIMARY KEY (id)
)ENGINE = INNODB COMMENT='�����ͬ��ϸ��, ������Ҫ������Ʒ���';

/*gbw �����ͬ��־��*/
DROP TABLE IF EXISTS loan_contract_logs;
CREATE TABLE loan_contract_logs
(
   id                   INT(11)  AUTO_INCREMENT COMMENT '���� id ������ ',
   loanContractId       INT(11) NOT NULL COMMENT 'loan_contract id',  
   soDoneCode           INT(11) NOT NULL COMMENT 'comm_business_record id',
   workFlowStatus       INT(3) COMMENT '��ͬ״̬(4:����� 8:��֤ʧ�� 12:�� ��ͨ�� 16:���ʧ�� 20:�ſ�ɹ� 24:��ֹ��ͬ 28:��ֹ��ͬ)',
   mogoStatus           INT(3) COMMENT 'mogo״̬(8:Ģ�����ͨ�� 12:Ģ���� ��ʧ��)',
   lenderStatus         INT(3) COMMENT '�ʷ�״̬(0:����������� 4:�����ڲ���֤ ʧ�� 8:���ϵ�������֤ʧ��)',
   createTime           DATETIME COMMENT '����ʱ��',
   errmsg               VARCHAR(150) COMMENT '�����������쳣��Ϣ����',
   PRIMARY KEY (id)
)ENGINE = INNODB COMMENT='�����ͬ��־��, ÿ�κ�ͬ״̬�����仯��Ҫ���ɴ˱�';