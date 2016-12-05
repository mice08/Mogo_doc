CREATE TABLE host_flats_relation
(
  id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ҵ������ID',
  flat_id INT(11) NOT NULL COMMENT '��ԢID',
  host_id INT(11) NOT NULL COMMENT 'ҵ��ID',
  landlord_id INT(11) NOT NULL COMMENT 'ְҵ����ID', 
  rent_start_date DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '��Լ��ʼ����',
  rent_end_date DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '��Լ��������',
  has_section TINYINT(1) DEFAULT 0 COMMENT '�Ƿ�֧�ֶַ����: 0:��֧��; 1:֧��',
  each_pay_day INT(2) DEFAULT 0 COMMENT 'ÿ�ڸ�����, 1~31��ѡ��һ��Ϊ������',
  start_pay_date DATETIME DEFAULT '1970-01-01 00:00:00' COMMENT '���ڸ�����',
  pay_channel VARCHAR(50) COMMENT '֧������(����/΢��/֧��������)',
  pay_type VARCHAR(50) DEFAULT 0 COMMENT '���ʽ(����Ѻһ����)',
  create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  create_by INT(11) DEFAULT 0 COMMENT '������Ա',
  update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
  update_by INT(11) DEFAULT 0 COMMENT '�޸���Ա',
  done_code INT(32) NOT NULL DEFAULT 0 COMMENT '������ˮ��',
  STATUS TINYINT(1) DEFAULT 1 COMMENT '״̬��0:ʧЧ; 1:����',
  remark VARCHAR(250) COMMENT '��ע'
) CHARSET=utf8 COMMENT 'ҵ���ͷ�Դ(��Ԣ)�Ĺ�ϵ��';

CREATE TABLE host_acct_busi_rec
(
  id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '����ƻ�ID',
  flat_id INT(11) NOT NULL COMMENT '��ԢID',
  host_id INT(11) NOT NULL COMMENT 'ҵ��ID',
  landlord_id INT(11) NOT NULL COMMENT 'ְҵ����ID',
  section_start_date DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '�ֶ����Ŀ�ʼʱ��',
  section_end_date DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '�ֶ����Ľ���ʱ��',
  pay_money DECIMAL(12,2) NOT NULL DEFAULT 0 COMMENT '���(�ֶ�ʽ���)',
  pay_date DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '����ʱ��(Ӧ������)', 
  real_pay_date DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT 'ʵ�ʸ���ʱ��',  
  has_paid TINYINT(1) DEFAULT 0 COMMENT '�Ƿ��Ѹ���: 0:δ����; 1:�Ѹ���',
  create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  create_by INT(11) DEFAULT 0 COMMENT '������Ա',
  update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
  update_by INT(11) DEFAULT 0 COMMENT '�޸���Ա',
  done_code INT(32) NOT NULL DEFAULT 0 COMMENT '������ˮ��',
  STATUS TINYINT(1) DEFAULT 1 COMMENT '״̬��0:ʧЧ; 1:����',
  remark VARCHAR(250) COMMENT '��ע'
) CHARSET=utf8 COMMENT '����ƻ���';


-- ҵ������ƾ֤ͼƬ����� 2015-9-28

CREATE TABLE host_flats_picture
(
  id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ҵ������ƾ֤ͼƬID',
  host_flat_id INT(11) NOT NULL COMMENT 'host_flats_relation��ID',
  pic_id INT(11) NOT NULL COMMENT 'comm_picture��ID',
  status TINYINT(2) DEFAULT 1 COMMENT '״̬��0:ʧЧ; 1:����'
)CHARSET=utf8 COMMENT '��������ҵ���տ�ƾ֤ͼƬ��';

-- ���Ӷ���ģ�� 2015-10-14

INSERT INTO mesg_template(TYPE,content,paramCount) 
  VALUES('sms_partner_comming_hostacct','����Ҫ��7������${1}��ҵ��֧�����֧����ɺ����¼Ģ�����ȷ�ϸ��',1);
INSERT INTO mesg_template(TYPE,content,paramCount) 
  VALUES('sms_partner_hostacct_duedate','${1}��ҵ������ѹ��ڣ��뼰ʱ����������֧�����¼Ģ�����ȷ�ϸ��',1);
