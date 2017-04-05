/*房东id可以为空，增加租客id*/
USE mogoroomdb;
alter table risk_landlord_level add renterId int(11) DEFAULT Null COMMENT '租客id'; 
alter table risk_landlord_level modify landlordId int(11) null COMMENT '房东id';