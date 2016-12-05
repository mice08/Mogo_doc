use mogoroomdb;

/*房东表 新增房东维系人员*/
ALTER TABLE user_landlord ADD COLUMN customerMgr INT(11) NULL comment '房东维系人员';
ALTER TABLE user_landlord_his ADD COLUMN customerMgr INT(11) NULL comment '房东维系人员';
 
/*房东表 新增房东来源*/
ALTER TABLE user_landlord ADD COLUMN landlordSource INT(2) NULL comment '房东来源(1:地推 2:老客户介绍 3:网络 4:其他)';
ALTER TABLE user_landlord_his ADD COLUMN landlordSource INT(2) NULL comment '房东来源(1:地推 2:老客户介绍 3:网络 4:其他)';