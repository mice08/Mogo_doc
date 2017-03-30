/*房东信用额度 新增房东额度配置hisId*/
ALTER TABLE loan_landlord_credit modify COLUMN sysConfHisId int(11) null comment '系统参数配置(关于信用额度his配置)' ;
/*房东信用额度_his 新增房东额度配置hisId*/
ALTER TABLE loan_landlord_credit_his modify COLUMN sysConfHisId int(11) null comment '系统参数配置His(关于信用额度his配置)' ;