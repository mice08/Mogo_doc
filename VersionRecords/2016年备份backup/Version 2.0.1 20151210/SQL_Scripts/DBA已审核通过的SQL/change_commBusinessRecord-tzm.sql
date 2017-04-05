/*  Database name `mogoroomdb` ，敏感信息以及业务操作记录表 */
Alter table `comm_business_record`  modify column `bizType` int(11) NOT NULL  COMMENT '操作类型 比如修改房价/预订/预约/签约/退房.../修改照片,table=acct_busitype'