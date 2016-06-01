/**创建user_bankcard、loan_renter_contract历史表**/

USE mogoroomdb;

ALTER TABLE user_bankcard MODIFY COLUMN userType INT(11) DEFAULT NULL COMMENT '用户类型(参考字典表groupName=userType)',
MODIFY COLUMN employ int(11) DEFAULT NULL COMMENT '是否是在使用状态(1:使用中 0:未使用)';

CREATE TABLE user_bankcard_his (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  bankcardId INT(11) NOT NULL COMMENT '银行卡ID',
  userType int(11) DEFAULT NULL COMMENT '用户类型(参考字典表groupName=userType)',
  userId int(11) DEFAULT NULL COMMENT '用户ID',
  realName varchar(16) DEFAULT NULL COMMENT '真实姓名',
  IDNumber varchar(32) DEFAULT NULL COMMENT '身份证号码',
  bankId int(11) DEFAULT NULL COMMENT '银行ID',
  bankName varchar(16) DEFAULT NULL COMMENT '银行名称',
  bankType varchar(16) DEFAULT NULL COMMENT '开户银行类型',
  bankCardNumber varchar(32) DEFAULT NULL COMMENT '银行卡卡号',
  cellPhoneNum varchar(16) DEFAULT NULL COMMENT '手机号码',
  status int(11) DEFAULT '1' COMMENT '可用状态',
  updateTime timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  createTime datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  remark varchar(128) DEFAULT NULL COMMENT '备注',
  bank_code varchar(32) DEFAULT NULL COMMENT '银行编号',
  bank_branch varchar(32) DEFAULT NULL COMMENT '支行名称',
  province varchar(16) DEFAULT NULL COMMENT '省',
  city varchar(16) DEFAULT NULL COMMENT '城市',
  card_type varchar(16) DEFAULT NULL COMMENT '卡类型',
  employ int(11) DEFAULT NULL COMMENT '是否是在使用状态(1:使用中 0:未使用)',
  ciphertext varchar(50) DEFAULT NULL COMMENT '密文',
  isCorp int(2) DEFAULT NULL COMMENT '银行卡归属于(0:个人 1:公司)',
  operType CHAR(1) NOT NULL COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='银行卡历史表';



CREATE TABLE loan_renter_contract_his (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  loanRenterContractId INT(11) NOT NULL COMMENT '贷款合同ID',
  renterId int(11) NOT NULL COMMENT '租客',
  roomId int(11) NOT NULL COMMENT '房间',
  infoId int(11) NOT NULL COMMENT '申请信息',
  contractno varchar(50) NOT NULL COMMENT '合同号',
  channel tinyint(3) NOT NULL COMMENT '贷款来源',
  status tinyint(3) NOT NULL COMMENT '合同状态',
  createTime timestamp NULL DEFAULT NULL COMMENT '创建时间',
  updateTime timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  loantime datetime DEFAULT NULL COMMENT '放款时间',
  landlordId int(11) NOT NULL COMMENT '房东',
  applyamt decimal(12,2) NOT NULL COMMENT '申请金额',
  updateBy int(11) DEFAULT NULL COMMENT '修改人',
  updateByType int(2) DEFAULT NULL COMMENT '修改人类型(参考字典表groupName=userType)',
  confirmer int(11) DEFAULT NULL COMMENT '财务款项到位确认人',
  confirmTime datetime DEFAULT NULL COMMENT '财务款项到位确认时间',
  retcode varchar(45) DEFAULT NULL COMMENT '信贷平台处理结果代码',
  errmsg varchar(150) DEFAULT NULL COMMENT '信贷平台处理结果描述',
  operType CHAR(1) NOT NULL COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='贷款合同历史表';
