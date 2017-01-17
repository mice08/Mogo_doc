/* Database name `mogoroomdb`, 风控征信系列表 */
USE mogoroomdb;

DROP TABLE IF EXISTS risk_qh_credit_user;

DROP TABLE IF EXISTS risk_qh_credit_address;

DROP TABLE IF EXISTS risk_qh_credit_bankCard;

DROP TABLE IF EXISTS risk_qh_credit_company;

DROP TABLE IF EXISTS risk_qh_credit_contacts;

DROP TABLE IF EXISTS risk_qh_credit_loanee;

DROP TABLE IF EXISTS risk_qh_credit_rskdoo ;

DROP TABLE IF EXISTS risk_qh_credit_xsDistrustInc ;

DROP TABLE IF EXISTS risk_qh_credit_xsExecuted ;


/*==============================================================*/
/* Table: risk_qh_credit_user                                      */
/*==============================================================*/
CREATE TABLE risk_qh_credit_user
(
   id                     INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
   legalRepresentativeId  INT(11) COMMENT '法人代表ID',
   name                   VARCHAR(50) COMMENT '姓名',
   card_id                VARCHAR(64) COMMENT '证件号码',
   card_type              VARCHAR(20) COMMENT '证件类型(参考字典表组名:riskQhCardType)',  
   mobile                 VARCHAR(16) COMMENT '手机号码',
   valid                  TINYINT(1) NOT NULL COMMENT '状态(0:无效 1:有效)',
   isOverallScoreUpdate   TINYINT(1) COMMENT '综合信用分信息是否有更新',
   overallScorePromptTime DATE COMMENT '综合信用分信息是否有更新提示时间',
   isUpdate               TINYINT(1) COMMENT '是有有鹰眼信息更新(0:没有,1:有)',
   isMonitoring           INT(1) COMMENT '是否监控',
   addMonitoringTime      DATE COMMENT '加入监控时间', 
   createBy               INT(11) COMMENT '创建人ID',
   createByType           INT(2) COMMENT '创建人类型(参考字典表组名:userType)',
   updateBy               INT(11) COMMENT '修改人ID',
   updateByType           INT(2) COMMENT '修改人类型(参考字典表组名:userType)',
   createTime             DATE COMMENT '创建时间',
   updateTime             DATE COMMENT '修改时间',
   PRIMARY KEY (id),
   KEY `card_id` (`card_id`),
   KEY `legalRepresentativeId` (`legalRepresentativeId`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '风控征信用户表';

/*==============================================================*/
/* Table: risk_qh_credit_address                                   */
/*==============================================================*/
CREATE TABLE risk_qh_credit_address
(
   id                   INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
   creditUserId         INT(11) COMMENT '征信用户表ID',
   address              VARCHAR(128) COMMENT '地址',
   sourceId             INT(2) COMMENT '来源代码(A-信贷逾期风险,B-行政负面风险,C-欺诈风险,99-权限不足)',
   province             VARCHAR(64) COMMENT '省（简称）',
   cityInfo             VARCHAR(64) COMMENT '城市信息',
   borough              VARCHAR(64) COMMENT '区（简称）',
   fmtAddress           VARCHAR(128) COMMENT '格式化地址',
   longitude            DOUBLE NULL COMMENT '经度',
   latitude             DOUBLE NULL COMMENT '纬度',
   buildingName         VARCHAR(32) COMMENT '楼盘名称',
   buildingAddress      VARCHAR(128) COMMENT '楼盘地址',
   houseArodAvgPrice    DECIMAL(12,2) COMMENT '楼盘周边均价',
   houseAvgPrice        DECIMAL(12,2) COMMENT '楼盘均价',
   state                INT(1) COMMENT '查询数据状态(-1：权限不足1:精准地址2：疑似附近地址信息（号牌无法解析）3：模糊地址4：疑似虚假地址)',
   buildingType         VARCHAR(16) COMMENT '建筑类型', 
   dataBuildTime        DATE COMMENT '业务发生时间',
   isMatch              INT(1) COMMENT '是否匹配(-1：权限不足1：未匹配0：匹配3：无法解析地址2：无定位信息)',
   addressPorperty      VARCHAR(256) COMMENT '地址属性',
   isValidAddress       INT(1) COMMENT '是否本人真实活动地址(0：否1：是  9：库中无数据)',
   addressType          VARCHAR(10) COMMENT '地址类型(home：疑似家庭地址other：其他高频地址work：疑似单位地址)',
   valid                TINYINT(1) COMMENT '状态(0:无效 1:有效)',
   isUpdate             TINYINT(1) COMMENT '是有有鹰眼信息更新(0:没有,1:有)',
   entityAuthCode       VARCHAR(32) COMMENT '信息主体授权码',
   entityAuthDate       DATE COMMENT '信息主体授权时间',
   createBy             INT(11) COMMENT '创建人ID',
   createByType         INT(2) COMMENT '创建人类型(参考字典表组名:userType)',
   updateBy             INT(11) COMMENT '修改人ID',
   updateByType         INT(2) COMMENT '修改人类型(参考字典表组名:userType)',
   createTime           DATE COMMENT '创建时间',
   updateTime           DATE COMMENT '修改时间',
   PRIMARY KEY (id),
   KEY `creditUserId` (`creditUserId`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '风控征信地址表';

/*==============================================================*/
/* Table: risk_qh_credit_bankCard                                  */
/*==============================================================*/
CREATE TABLE risk_qh_credit_bankCard
(
   id                   INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
   creditUserId         INT(11) COMMENT '征信用户表ID',
   bankCardNo           VARCHAR(128) COMMENT '银行卡号',
   authType             VARCHAR(2) COMMENT '鉴权类型',
   entityAuthCode       VARCHAR(32) COMMENT '卡主授权代码',
   entityAuthDate       DATE COMMENT '卡主授权时间',
   authResult           INT(1) COMMENT '鉴权结果(1：鉴权通过(信息匹配)0：鉴权不通过2：未覆盖)', 
   bankName             VARCHAR(128) COMMENT '发卡行',
   cardType             VARCHAR(32) COMMENT '卡类型',
   valid                TINYINT(1) COMMENT '状态(0:无效 1:有效)',
   createBy             INT(11) COMMENT '创建人ID',
   createByType         INT(2) COMMENT '创建人类型(参考字典表组名:userType)',
   updateBy             INT(11) COMMENT '修改人ID',
   updateByType         INT(2) COMMENT '修改人类型(参考字典表组名:userType)',
   createTime           DATE COMMENT '创建时间',
   updateTime           DATE COMMENT '修改时间',
   PRIMARY KEY (id),
   KEY `creditUserId` (`creditUserId`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '风控征信银行卡鉴权表';

/*==============================================================*/
/* Table: risk_qh_credit_company                                   */
/*==============================================================*/
CREATE TABLE risk_qh_credit_company
(
   id                   INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
   creditUserId         INT(11) COMMENT '征信用户表ID',
   company              VARCHAR(64) COMMENT '工作单位',
   isRealCompany        INT(1) COMMENT '是否真实工作单位(0：否1：是  9：库中无数据)', 
   companySimDeg        INT(3) COMMENT '单位匹配度分值',
   appearFirstDate        DATE COMMENT '单位最初出现时间',
   appearLastDate       DATE COMMENT '单位最近一次出现时间',
   valid                TINYINT(1) COMMENT '状态(0:无效 1:有效)',
   createBy             INT(11) COMMENT '创建人ID',
   createByType         INT(2) COMMENT '创建人类型(参考字典表组名:userType)',
   updateBy             INT(11) COMMENT '修改人ID',
   updateByType         INT(2) COMMENT '修改人类型(参考字典表组名:userType)',
   createTime           DATE COMMENT '创建时间',
   updateTime           DATE COMMENT '修改时间',
   PRIMARY KEY (id),
   KEY `creditUserId` (`creditUserId`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '风控征信工作单位表';

/*==============================================================*/
/* Table: risk_qh_credit_contacts                                  */
/*==============================================================*/
CREATE TABLE risk_qh_credit_contacts
(
   id                   INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
   creditUserId         INT(11) COMMENT '征信用户表ID',
   refName              VARCHAR(64) COMMENT '联系人',
   refMobileNo          VARCHAR(64) COMMENT '联系人手机号码',
   isExistRel           INT(1) COMMENT '是否存在关系(0：否1：是  9：库中无数据)',
   relLevel             INT(1) COMMENT '关系力度(3：其他2：强  1：中 0：弱)',  
   valid                TINYINT(1) COMMENT '状态(0:无效 1:有效)',
   createBy             INT(11) COMMENT '创建人ID',
   createByType         INT(2) COMMENT '创建人类型(参考字典表组名:userType)',
   updateBy             INT(11) COMMENT '修改人ID',
   updateByType         INT(2) COMMENT '修改人类型(参考字典表组名:userType)',
   createTime           DATE COMMENT '创建时间',
   updateTime           DATE COMMENT '修改时间',
   PRIMARY KEY (id),
   KEY `creditUserId` (`creditUserId`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '风控征信联系人表';

/*==============================================================*/
/* Table: risk_qh_credit_loanee                                    */
/*==============================================================*/
CREATE TABLE risk_qh_credit_loanee
(
   id                   INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
   creditUserId         INT(11) COMMENT '征信用户表ID',
   entityAuthCode       VARCHAR(32) COMMENT '信息主体授权码',
   entityAuthDate       DATE COMMENT '信息主体授权时间',
   industry             VARCHAR(8) COMMENT '机构所属行业',
   amount               INT(3) COMMENT '命中机构数目',
   bnkAmount            INT(3) COMMENT '命中银行机构数',
   cnssAmount           INT(3) COMMENT '命中消费金融机构数',
   p2pAmount            INT(3) COMMENT '命中p2p或者小贷机构数',
   queryAmt             INT(5) COMMENT '机构查询总量',
   queryAmtMThree           INT(5) COMMENT '近三个月机构查询量',
   queryAmtMSix           INT(5) COMMENT '近六个月机构查询量',
   busiDate             DATE COMMENT '业务发生时间日期',
   isUpdate             TINYINT(1) COMMENT '是有有鹰眼信息更新(0:没有,1:有)',
   valid                TINYINT(1) COMMENT '状态(0:无效 1:有效)',
   createBy             INT(11) COMMENT '创建人ID',
   createByType         INT(2) COMMENT '创建人类型(参考字典表组名:userType)',
   updateBy             INT(11) COMMENT '修改人ID',
   updateByType         INT(2) COMMENT '修改人类型(参考字典表组名:userType)',
   createTime           DATE COMMENT '创建时间',
   updateTime           DATE COMMENT '修改时间',
   PRIMARY KEY (id),
   KEY `creditUserId` (`creditUserId`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '风控征信常贷客表';

/*==============================================================*/
/* Table: risk_qh_credit_rskdoo                                    */
/*==============================================================*/
CREATE TABLE risk_qh_credit_rskdoo
(
   id                   INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
   creditUserId         INT(11) COMMENT '征信用户表ID',
   bankCardNo           VARCHAR(128) COMMENT '银行卡卡号',
   sourceId             VARCHAR(2) COMMENT '来源代码(A - 信贷逾期风险B - 行政负面风险C - 欺诈风险99 - 权限不足)',
   rskScore             INT(3) COMMENT '风险得分', 
   rskMark              VARCHAR(8) COMMENT '风险标记',
   dataBuildTime        DATE COMMENT '业务发生时间',
   isRealIdentity       INT(2) COMMENT '是否真实身份(0：否1：是  9：库中无数据)',
   isOwnerMobile        INT(2) COMMENT '手机验证结果(0：手机号、证件号、姓名均一致1：手机号和证件号一致，姓名不一致2：手机号和证件号一致，姓名不明确3：手机号一致，证件号和姓名不一致9：库中无数据)',
   ownerMobileStatus    INT(2) COMMENT '手机状态(1：正常2：停机3：不可用4：已销号5：预销号9：不明确)',
   useTimeScore         INT(8) COMMENT '使用时间(月)-1：不可用 1：(0-1]2： (1-2]，3： (2-6]4： (6-12]5： (12-24]6 ：(24-36]7： (36,+]30 ：(0,6]60： （24,+]区段的单位为月',
   dataStatus           INT(2) COMMENT '数据状态',
   isUpdate             TINYINT(1) COMMENT '是有有鹰眼信息更新(0:没有,1:有)',
   valid                TINYINT(1) COMMENT '状态(0:无效 1:有效)',
   createBy             INT(11) COMMENT '创建人ID',
   createByType         INT(2) COMMENT '创建人类型(参考字典表组名:userType)',
   updateBy             INT(11) COMMENT '修改人ID',
   updateByType         INT(2) COMMENT '修改人类型(参考字典表组名:userType)',
   createTime           DATE COMMENT '创建时间',
   updateTime           DATE COMMENT '修改时间',
   PRIMARY KEY (id),
   KEY `creditUserId` (`creditUserId`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '风控征信风险度提示表';

/*==============================================================*/
/* Table: risk_qh_credit_xsDistrustInc                             */
/*==============================================================*/
CREATE TABLE risk_qh_credit_xsDistrustInc
(
   id                   INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
   creditUserId         INT(11) COMMENT '征信用户表ID',
   province             VARCHAR(24) COMMENT '省份',
   TYPE                 VARCHAR(64) COMMENT '类型',
   gistId               VARCHAR(128) COMMENT '执行依据文号',
   exedOrg              VARCHAR(72) COMMENT '做出执行依据单位',
   lawerDuty            VARCHAR(1024) COMMENT '生效法律文书确定的义务',
   lawerUserName        VARCHAR(128) COMMENT '法定代表人或者负责人姓名',
   gender               TINYINT(1) COMMENT '性别(0:女 1：男)',
   age                  INT(3) COMMENT '年龄',
   buildDate            DATE COMMENT '立案时间',
   distrustType         VARCHAR(64) COMMENT '失信类型',
   fulfillInc           VARCHAR(64) COMMENT '被执行人的履行情况',
   unfulfill            VARCHAR(64) COMMENT '未履行',  
   fulfilled            VARCHAR(64) COMMENT '已履行',  
   courtName            VARCHAR(72) COMMENT '执行法院',
   publishDate          DATE COMMENT '发布日期',
   caseCode             VARCHAR(128) COMMENT '案号',
   valid                TINYINT(1) COMMENT '状态(0:无效 1:有效)',
   createBy             INT(11) COMMENT '创建人ID',
   createByType         INT(2) COMMENT '创建人类型(参考字典表组名:userType)',
   updateBy             INT(11) COMMENT '修改人ID',
   updateByType         INT(2) COMMENT '修改人类型(参考字典表组名:userType)',
   createTime           DATE COMMENT '创建时间',
   updateTime           DATE COMMENT '修改时间',
   PRIMARY KEY (id),
   KEY `creditUserId` (`creditUserId`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '风控征信失信被执行信息表';

/*==============================================================*/
/* Table: risk_qh_credit_xsExecuted                                */
/*==============================================================*/
CREATE TABLE risk_qh_credit_xsExecuted
(
   id                   INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
   creditUserId         INT(11) COMMENT '征信用户表ID',
   caseStatus           VARCHAR(32) COMMENT '案件状态',
   buildDate            DATE COMMENT '立案时间',
   courtName            VARCHAR(72) COMMENT '法院',
   execMoney            VARCHAR(24) COMMENT '执行标的',
   caseCode             VARCHAR(128) COMMENT '案号',
   valid                TINYINT(1) COMMENT '状态(0:无效 1:有效)',
   createBy             INT(11) COMMENT '创建人ID',
   createByType         INT(2) COMMENT '创建人类型(参考字典表组名:userType)',
   updateBy             INT(11) COMMENT '修改人ID',
   updateByType         INT(2) COMMENT '修改人类型(参考字典表组名:userType)',
   createTime           DATE COMMENT '创建时间',
   updateTime           DATE COMMENT '修改时间',
   PRIMARY KEY (id),
   KEY `creditUserId` (`creditUserId`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '风控征信法院通被执行信息表';