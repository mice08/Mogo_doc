CREATE TABLE host_flats_relation
(
  id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '业主管理ID',
  flat_id INT(11) NOT NULL COMMENT '公寓ID',
  host_id INT(11) NOT NULL COMMENT '业主ID',
  landlord_id INT(11) NOT NULL COMMENT '职业房东ID', 
  rent_start_date DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '租约开始日期',
  rent_end_date DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '租约结束日期',
  has_section TINYINT(1) DEFAULT 0 COMMENT '是否支持分段租金: 0:不支持; 1:支持',
  each_pay_day INT(2) DEFAULT 0 COMMENT '每期付款日, 1~31中选择一天为付款日',
  start_pay_date DATETIME DEFAULT '1970-01-01 00:00:00' COMMENT '下期付款日',
  pay_channel VARCHAR(50) COMMENT '支付渠道(银行/微信/支付宝……)',
  pay_type VARCHAR(50) DEFAULT 0 COMMENT '付款方式(付三押一……)',
  create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  create_by INT(11) DEFAULT 0 COMMENT '创建人员',
  update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  update_by INT(11) DEFAULT 0 COMMENT '修改人员',
  done_code INT(32) NOT NULL DEFAULT 0 COMMENT '操作流水号',
  STATUS TINYINT(1) DEFAULT 1 COMMENT '状态：0:失效; 1:可用',
  remark VARCHAR(250) COMMENT '备注'
) CHARSET=utf8 COMMENT '业主和房源(公寓)的关系表';

CREATE TABLE host_acct_busi_rec
(
  id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '付款计划ID',
  flat_id INT(11) NOT NULL COMMENT '公寓ID',
  host_id INT(11) NOT NULL COMMENT '业主ID',
  landlord_id INT(11) NOT NULL COMMENT '职业房东ID',
  section_start_date DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '分段租金的开始时间',
  section_end_date DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '分段租金的结束时间',
  pay_money DECIMAL(12,2) NOT NULL DEFAULT 0 COMMENT '租金(分段式租金)',
  pay_date DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '付款时间(应付款日)', 
  real_pay_date DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '实际付款时间',  
  has_paid TINYINT(1) DEFAULT 0 COMMENT '是否已付款: 0:未付款; 1:已付款',
  create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  create_by INT(11) DEFAULT 0 COMMENT '创建人员',
  update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  update_by INT(11) DEFAULT 0 COMMENT '修改人员',
  done_code INT(32) NOT NULL DEFAULT 0 COMMENT '操作流水号',
  STATUS TINYINT(1) DEFAULT 1 COMMENT '状态：0:失效; 1:可用',
  remark VARCHAR(250) COMMENT '备注'
) CHARSET=utf8 COMMENT '付款计划表';


-- 业主付款凭证图片不存表 2015-9-28

CREATE TABLE host_flats_picture
(
  id INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '业主付款凭证图片ID',
  host_flat_id INT(11) NOT NULL COMMENT 'host_flats_relation表ID',
  pic_id INT(11) NOT NULL COMMENT 'comm_picture表ID',
  status TINYINT(2) DEFAULT 1 COMMENT '状态：0:失效; 1:可用'
)CHARSET=utf8 COMMENT '房东贷款业主收款凭证图片表';

-- 增加短信模板 2015-10-14

INSERT INTO mesg_template(TYPE,content,paramCount) 
  VALUES('sms_partner_comming_hostacct','您需要在7日内向${1}的业主支付租金，支付完成后请登录蘑菇伙伴确认付款。',1);
INSERT INTO mesg_template(TYPE,content,paramCount) 
  VALUES('sms_partner_hostacct_duedate','${1}的业主租金已过期，请及时补交，若已支付请登录蘑菇伙伴确认付款。',1);
