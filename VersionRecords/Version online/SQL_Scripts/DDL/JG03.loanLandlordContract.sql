/*修改字段*/

USE mogoroomdb;

/*修改申请日期可以为空，默认为空（基于房东可以填写资料但不提交申请的需求）*/
ALTER TABLE loan_landlord_contract modify column applyTime timestamp DEFAULT NULL COMMENT '申请时间';

/*修改教育程度可以为空，默认为空（基于房东可以不选教育程度，选择暂时保存的需求）*/
ALTER TABLE loan_landlord_mPayApply modify column education int(1) DEFAULT NULL COMMENT '教育程度(参考字典表组名:educationalBackground)';
