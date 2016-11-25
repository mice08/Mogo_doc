use mogoroomdb;

drop table if exists rsci_rschartinfo_base;

drop table if exists rsci_rschartinfo_sale;

drop table if exists rsci_rschartinfo_stat;

/*==============================================================*/
/* Table: rsci_rschartinfo_base                                 */
/*==============================================================*/
create table rsci_rschartinfo_base
(
   rsid                 int not null auto_increment comment '房态信息主键.',
   md5                  varchar(32) not null comment '记录的md5值。',
   roomId               int(11) default NULL comment '房间id',
   flatsId              int(11) default NULL comment '公寓id',
   landlordId           int(11) default NULL comment '房东id',
   orgId                int(11) default NULL comment '分店ID',
   rowCreateTime        datetime comment '记录插入时间',
   rowUpdateTime        datetime comment '记录更新时间',
   cityId               int(11) default NULL comment '房源所在城市id',
   cityName             varchar(16) default NULL comment '城市名',
   districtId           int(11) default NULL comment '房源所在城市的区id',
   districtName         varchar(16) default NULL comment '房源所在城市的区名',
   communityId          int(11) default NULL comment '小区id',
   communityName        varchar(32) default NULL comment '小区名/公寓名',
   flatNickName         varchar(32) default NULL comment '公寓别名',
   building             varchar(64) default NULL comment '几栋',
   unit                 varchar(16) default NULL comment '几单元',
   floorNum             int(11) default NULL comment '第几层',
   flatsRoomNum         varchar(32) default NULL comment '几室',
   flatsTag             int(11) default NULL comment '公寓类型:分散式、集中式',
   flatsRentType        int(11) default NULL comment '房源出租类型：整租、合租',
   bedroomCount         int(11) default NULL comment '室',
   parlorCount          int(11) default NULL comment '厅',
   toiletCount          int(11) default NULL comment '卫',
   roomNum              varchar(32) default NULL comment '房源编号',
   roomName             varchar(32) default NULL comment '房间名、如A、B',
   roomRemark           varchar(255) default NULL comment '房源备注',
   roomAlias            varchar(32) default NULL comment '房间别名',
   flatsNum             varchar(32) default NULL comment '房源编号',
   flatsIsVeriy         int(11) default NULL comment '公寓审核状态。',
   roomRentStatus       int(11) default NULL comment '房源出租状态。用于计算：租客待补录状态、空置状态、已预定状态',
   communityStatus      int(11) default NULL comment '小区状态',
   flatsStatus          int(11) default NULL comment '公寓状态',
   roomStatus           int(11) default NULL comment '房间状态',
   roomCount            int(11) default NULL comment '房间图片',
   communityProId       int(11) default NULL comment '大楼id',
   flatsProId           int(11) default NULL comment '房型id',
   face                 varchar(16) default NULL comment '房间朝向',
   area                 varchar(16) default NULL comment '房间面积',
   roomCreateTime       datetime default NULL comment '房间录入时间。用于计算：房源空置开始时间',
   roomUpdateTime       datetime default NULL comment '房间更新时间。用于时间排序',
   primary key (rsid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  COMMENT='房态信息统计表主表。包含房源基本信息';

/*==============================================================*/
/* Index: roomId                                                */
/*==============================================================*/
ALTER TABLE rsci_rschartinfo_base ADD UNIQUE INDEX roomId (roomId) ;

/*==============================================================*/
/* Index: landlordId                                            */
/*==============================================================*/
ALTER TABLE rsci_rschartinfo_base ADD INDEX landlordId (landlordId) ;

/*==============================================================*/
/* Index: orgId                                                 */
/*==============================================================*/
ALTER TABLE rsci_rschartinfo_base ADD INDEX orgId (orgId) ;

/*==============================================================*/
/* Index: md5                                                   */
/*==============================================================*/
ALTER TABLE rsci_rschartinfo_base ADD INDEX md5(md5) ;

/*==============================================================*/
/* Table: rsci_rschartinfo_sale                                 */
/*==============================================================*/
create table rsci_rschartinfo_sale
(
   rsid                 int not null auto_increment comment '房态信息主键。',
   bookOrderId          int(11) default NULL comment '预定单id',
   signedOrderId        int(11) default NULL comment '签约单id。用于计算：租客待补录状态',
   saleContractId       int(11) default NULL comment '销售合同id',
   subsId               int(11) default NULL comment '签约单相关联的订购id',
   surrenderApplyId     int(11) default NULL comment '退房申请单id',
   roomLastCheckOutTime date default NULL comment '房间最后退房时间。用于计算：房源空置开始时间',
   surrenderApplyStatus int(11) default NULL comment '房间退房单状态。',
   roomCheckInTime      date default NULL comment '房源可入住时间。用于计算临时锁定天数',
   mogoOfflineEndTime   date default NULL comment '蘑菇下架状态的有效截止时间,用于计算蘑菇下架状态、天数-->官网显示隐藏相关字段',
   onlineStatus         int(11) default NULL comment '房东上下架状态-->官网显示隐藏相关字段',
   bookOrderStatus      int(11) default NULL comment '预定单状态。用于计算：已预定状态',
   bookedName           varchar(64) default NULL comment '预定人姓名',
   bookedDeposit        decimal(10,2) default NULL comment '预定金额',
   bookedCellPhone      varchar(16) default NULL comment '预定人电话',
   bookOrderCreateTime  date default NULL comment '预定时间',
   signedNum            varchar(32) default NULL comment '订单编号',
   signedOrderStatus    int(11) default NULL comment '签约单状态。用于计算：租客待补录状态、签约中状态',
   saleContractTurnStatus int(11) default NULL comment '销售合同转客状态。用于计算：租客已补待确认状态.',
   saleContractBeginDate date default NULL comment '销售合同开始时间',
   saleContractEndDate  date default NULL comment '销售合同结束日期。用于计算：快到期、已到期、需退房状态。',
   realRentPrice        decimal(10,2) default NULL comment '实际租售价格',
   billConfig           varchar(4048) default NULL comment '账单计划json',
   payName              varchar(32) default NULL comment '实际付款名称',
   saleContractType     int(11) default NULL comment '销售合同类型',
   depositCount         decimal(10,2) default NULL comment '押金',
   waitCheckoutTuifangInfos varchar(1024) default NULL comment '退房未结账信息.为列表json。',
   renterId             int(11) default NULL comment '承租人id',
   renterName           varchar(64) default NULL comment '承租人名',
   renterPhone          varchar(16) default NULL comment '承租人电话',
   realRenters          varchar(1024) default NULL comment '入住人列表。Map的key有saleContractId,userId,userType,name,phone。为json列表。',
   hostId               int(11) default NULL comment '业主id',
   hostName             varchar(64) default NULL comment '业主名',
   hostRentEndDate      date default NULL comment '业主到期日期',
   orgName              varchar(64) default NULL comment '分店名称',
   lcrCreateTime        datetime default NULL comment '房东小区关系建立时间',
   rowCreateTime        datetime comment '记录插入时间',
   rowUpdateTime        datetime comment '记录更新时间',
   primary key (rsid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment='房态信息统计表状态分表。用于记录房态信息的状态部分以及订单,签约单信息。';

/*==============================================================*/
/* Table: rsci_rschartinfo_stat                                 */
/*==============================================================*/
create table rsci_rschartinfo_stat
(
   rsid                 int not null auto_increment comment '房态信息主键。',
   payTypeId            int(11) default NULL comment '付款方式1的id',
   payTypeName          varchar(32) default NULL comment '付款方式1的名',
   salePrice            decimal(10,2) default NULL comment '付款方式1的价格',
   payTypeId2           int(11) default NULL comment '付款方式2的id',
   payTypeName2         varchar(32) default NULL comment '付款方式2的名',
   salePrice2           decimal(10,2) default NULL comment '付款方式2的价格',
   roomPictureCount     int(11) default NULL comment '房源照片数。用于计算：房源无照片状态。',
   unpayRentBillId      int(11) default NULL comment '未支付租金账单id。用于计算：租客欠租状态。',
   unpayRentBillDeadline date default NULL comment '未支付租金账单应付款日。用于计算：收租提醒状态。true为要提醒房东收租了。',
   unpayRentBillAmount  decimal(10,2) default NULL comment '未支付租金账单Amount',
   owedCustomBillIds    varchar(1024) default NULL comment '其他欠费账单:除租金和押金外的所有欠费账单id.为列表json。',
   owedCustomBillOwedAmount decimal(10,2) default NULL comment '其他欠费账单欠费总金额:除租金和押金外的所有欠费账单的欠费总金额',
   owedRentAndDepositBillIds varchar(1024) default NULL comment '当前租金和押金欠款的账单id。为列表json。',
   owedRentAndDepositBillOwedAmount decimal(10,2) default NULL comment '当前租金和押金欠款的总金额',
   nextRentBillId       int(11) default NULL comment '下期租金账单id',
   nextRentBillDeadline date default NULL comment '下期租金账单应付款日',
   roomVacantFlag       tinyint(1) default NULL comment '未出租状态',
   roomOccupiedFlag     tinyint(1) default NULL comment '已出租状态',
   roomBookedFlag       tinyint(1) default NULL comment '已预订状态',
   waitTurnFlag         tinyint(1) default NULL comment '租约待补录状态',
   waitConfirmTurnFlag  tinyint(1) default NULL comment '已补待确认状态',
   renterOweRentFlag    tinyint(1) default NULL comment '租客欠租状态',
   alertRenterPayBillFlag tinyint(1) default NULL comment '收租提醒状态',
   roomSigningFlag      tinyint(1) default NULL comment '房源签约中状态',
   contractNearExpireFlag tinyint(1) default NULL comment '合同快到期状态',
   contractExpiredFlag  tinyint(1) default NULL comment '合同已到期状态',
   needSurrenderFlag    tinyint(1) default NULL comment '房源需退房状态',
   roomNoPictureFlag    tinyint(1) default NULL comment '房源无照片状态',
   roomHiddenFlag       tinyint(1) default NULL comment '房源隐藏状态',
   otherOorderDebtFlag  tinyint(1) default NULL comment '其他费用是否欠款状态',
   hasRoomRemarkFlag    tinyint(1) default NULL comment '房源有备注状态',
   waitCheckoutTuifangFlag tinyint(1) default NULL comment '已退房未结账状态',
   roomUnrentFlag       tinyint(1) default NULL comment '房源未出租(可出租)状态',
   rowCreateTime        datetime comment '记录插入时间',
   rowUpdateTime        datetime comment '记录更新时间',
   
   decoTagId            int(11) comment '装修标签ID',
   decoTagBeginTime     datetime comment '装修标签开始时间',
   decoTagEndTime       datetime comment '装修标签结束时间',
   roomVacantDays       int(11) comment '房源空置天数',
   primary key (rsid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment='房态信息统计表统计分表。用于保存统计信息。';

