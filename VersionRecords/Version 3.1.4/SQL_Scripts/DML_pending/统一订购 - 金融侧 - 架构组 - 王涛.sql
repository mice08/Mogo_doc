use mogoroomdb;

alter table loan_landlord_mgmt add column subsId int(11) comment '订购ID'; 
alter table loan_landlord_payplan add column subsId int(11) comment '订购ID'; 
alter table loan_landlord_buyback add column subsId int(11) comment '订购ID'; 
alter table loan_landlord_repayplan add column subsId int(11) comment '订购ID';
