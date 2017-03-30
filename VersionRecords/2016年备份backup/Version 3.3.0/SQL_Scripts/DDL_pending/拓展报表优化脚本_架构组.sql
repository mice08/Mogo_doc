
/* Database name `mogoroomdb`， 添加拓展报表相关字段 */theoryAmount
use mogoroomdb;

drop table if exists repo_landlord_house_sum;
create table repo_landlord_house_sum(
   id INT(11) NOT NULL AUTO_INCREMENT primary key COMMENT '主键',
   reportDate date    comment '报表汇总日期',
   contractDate date    comment '合同日期',
   landlordId int(11) comment '房东id',
   landlordName varchar(50) comment '房东姓名',
   landlordPhone varchar(11) comment '房东手机号',
   salesmanId int(11) comment '拓展员ID',
   salesmanName varchar(50) comment '拓展员姓名',
   salesmanDeptName varchar(50) comment '拓展员所属部门',
   salesmanDeptId INT(11) comment '拓展员所属部门id',
   salesmanDeptFullPath varchar(50) comment '拓展员所属部门全编码',
   salesmanDeptLevel int comment '拓展员所属部门级别',
   signCount int(11)   comment '房东签约体量',
   roomInputCount  int(11) comment '房东房源录入数',
   roomInputRatio DECIMAL(5,4) comment '房东房源录入占比',
   rentCount      int(11) comment '房东房源已租数',
   rentRatio      DECIMAL(5,4) comment '房东房源出租占比',
   nullCount      int(11) comment '房东房源空置数',
   nullRatio      DECIMAL(5,4) comment '房东房源空置占比',
   
   moguFirstCount   int(11) default 0 comment '蘑菇宝支付总量',
   onlineCount    int(11) default 0 comment '在线签约(不包括补录、蘑菇宝)',
   
   buluCount      int(11) default 0 comment '补录租约总量',
   confirmBulu    int(11) default 0 comment '补录确认租约总量',
   buluConfirmRatio  DECIMAL(7,4) default 0 comment '补录确认占比',
   firstConfirmBulu int(11) default 0 comment '补录确认首次支付总数',
   allFirstConfirmBulu int(11) default 0 comment '补录累计首次支付确认总量',
   
   currentRentCount int(11) default 0 comment '当前签约总量',
   currentRentRatio      DECIMAL(7,4) default 0 comment '当前签约占比',
   
   firstPayCount             int(11) comment '首期款,不包括蘑菇宝',
   allFirstOnlinePayCount  int(11) default 0 comment '首次在线支付总数',
   allOnlinePayCount   int(11) default 0 comment '在线支付总数',
   
   selfBillCount  int(11) default 0 comment '自定义账单总数',
   selfBillPayCount  int(11) default 0 comment '自定义账单支付总数',
   
   allMoguRadio   DECIMAL(5,4) default 0 comment '蘑菇包办理占比',
   mogoaActualAmount DECIMAL(11,2) default 0 comment '蘑菇包放款总额'
) ENGINE=INNODB COMMENT='房东拓展报表汇总表';

drop table if exists repo_landlord_house_detail;
create table repo_landlord_house_detail(
   id INT(11) NOT NULL AUTO_INCREMENT primary key COMMENT '主键',
   reportDate date    comment '当前账务日期',
   landlordId int(11) comment '房东id',
   landlordName varchar(50) comment '房东姓名',
   landlordPhone varchar(11) comment '房东手机号',
   salesmanId int(11) comment '拓展员ID',
   salesmanName varchar(50) comment '拓展员姓名',
   salesmanDeptName varchar(50) comment '拓展员所属部门',
   salesmanDeptId int(11) comment '拓展员所属部门id',
   salesmanDeptFullPath varchar(50) comment '拓展员所属部门全编码',
   salesmanDeptLevel int comment '拓展员所属部门级别',
   receivable     int(11) comment '应收总量',
   freshCheckout  int(11) comment '实收总量',
   firstPay       int(11) comment '首期款,不包括蘑菇宝',
   mogufirstPay   int(11) comment '蘑菇宝支付总量',
   nomalPay       int(11) comment '常规款支付总量',
   onlinePayCount    int(11) comment '在线签约(不包括补录、蘑菇宝)',
   allOnlinePayCount int(11) comment '在线支付总数',
   unlineFreshCheckout int(11) comment '线下支付总数',
   firstConfirmBulu int(11) comment '补录首次支付确认总量',
   buluCount      int(11) comment '补录租约总量',
   confirmBulu    int(11) comment '补录确认租约总量',
   noConfirmBulu    int(11) comment '补录未确认租约总量'
) ENGINE=INNODB COMMENT='房东拓展报表每日明细表';
