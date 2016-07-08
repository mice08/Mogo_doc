use mogoroomdb;

/*房东表 新增服务人*/
ALTER TABLE user_landlord ADD COLUMN servicerId INT(11) NULL comment '服务人ID';

/*房东表 新增房东来源*/
ALTER TABLE user_landlord ADD COLUMN landlordSource INT(2) NULL comment '房东来源(1:地推 2:老客户介绍3:网络 4:其他)';