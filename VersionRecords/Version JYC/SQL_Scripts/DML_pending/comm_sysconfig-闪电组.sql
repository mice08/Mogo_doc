/*新增房东信用配置参数*/
use mogoroomdb;
insert into `comm_sysconfig`
(`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)
values('LOAN_CREDIT_CONFIG_KEY_3_0','[{\"id\":1,\"groupCode\":\"A\",\"groupName\":\"房东规模动态额度A\",\"itemCode\":\"RANGE_AMOUNT_ONLINE_All_ROOM_MONTH_RETNS\",\"itemName\":\"所有线上房源月租金总金额（万）\",\"comments\":\"平均交易月\",\"rate1\":9.80,\"rate2\":0.10,\"calcuteExp\":\"所有线上房源月租金总金额（万）*9（平均月份）*0.1\",\"updateBy\":2000681,\"updateByType\":5,\"updateTime\":\"2016-05-09 15:54:00\",\"valid\":1},{\"id\":2,\"groupCode\":\"B\",\"groupName\":\"线上交易动态额度B\",\"itemCode\":\"ONLINE_TRADING_AMOUNT_TIMESOF_CUSTOM_BILL_1\",\"itemName\":\"0次\",\"rate1\":1.90,\"rate2\":3.00,\"maxCount\":2,\"calcuteExp\":\"A+线上支付租金金额*0.5*1.00\",\"updateBy\":2000681,\"updateByType\":5,\"updateTime\":\"2016-05-09 15:54:00\",\"valid\":1},{\"id\":3,\"groupCode\":\"B\",\"groupName\":\"线上交易动态额度B\",\"itemCode\":\"ONLINE_TRADING_AMOUNT_TIMESOF_CUSTOM_BILL_2\",\"itemName\":\"3次\",\"rate1\":1.90,\"rate2\":2.00,\"count\":3,\"minCount\":3,\"maxCount\":5,\"calcuteExp\":\"A+线上支付租金金额*0.5*1.05\",\"updateBy\":2000681,\"updateByType\":5,\"updateTime\":\"2016-05-09 15:54:00\",\"valid\":1},{\"id\":4,\"groupCode\":\"B\",\"groupName\":\"线上交易动态额度B\",\"itemCode\":\"ONLINE_TRADING_AMOUNT_TIMESOF_CUSTOM_BILL_3\",\"itemName\":\"6次\",\"rate1\":1.90,\"rate2\":1.10,\"count\":6,\"minCount\":6,\"maxCount\":8,\"calcuteExp\":\"A+线上支付租金金额*0.5*1.1\",\"updateBy\":2000681,\"updateByType\":5,\"updateTime\":\"2016-05-09 15:54:00\",\"valid\":1},{\"id\":5,\"groupCode\":\"B\",\"groupName\":\"线上交易动态额度B\",\"itemCode\":\"ONLINE_TRADING_AMOUNT_TIMESOF_CUSTOM_BILL_4\",\"itemName\":\"9次\",\"rate1\":1.90,\"rate2\":1.15,\"count\":9,\"minCount\":9,\"maxCount\":11,\"calcuteExp\":\"A+线上支付租金金额*0.5*1.15\",\"updateBy\":2000681,\"updateByType\":5,\"updateTime\":\"2016-05-09 15:54:00\",\"valid\":1},{\"id\":6,\"groupCode\":\"B\",\"groupName\":\"线上交易动态额度B\",\"itemCode\":\"ONLINE_TRADING_AMOUNT_TIMESOF_CUSTOM_BILL_5\",\"itemName\":\"12次\",\"rate1\":1.90,\"rate2\":1.20,\"count\":12,\"minCount\":12,\"maxCount\":2147483647,\"calcuteExp\":\"A+线上支付租金金额*0.5*1.2\",\"updateBy\":2000681,\"updateByType\":5,\"updateTime\":\"2016-05-09 15:54:00\",\"valid\":1},{\"id\":7,\"groupCode\":\"C\",\"groupName\":\"额度扣减C\",\"itemCode\":\"DEDUCTION_AMOUNT_PURE_LENT_AMOUNT\",\"itemName\":\"租金宝放款净额\",\"comments\":\"即分期金额-租金宝手续费（保证金不影响额度）\",\"rate1\":1.00,\"rate2\":1,\"calcuteExp\":\"A+B-租金宝放款净额\",\"updateBy\":2000681,\"updateByType\":5,\"updateTime\":\"2016-05-09 15:54:00\",\"valid\":1},{\"id\":8,\"groupCode\":\"C\",\"groupName\":\"额度扣减C\",\"itemCode\":\"DEDUCTION_AMOUNT_PURE_CANCEL_LEASES\",\"itemName\":\"租约终止（提前退租、满期终止），该笔租约对应的线上交易动态额度B清零\",\"rate1\":1.00,\"rate2\":1,\"calcuteExp\":\"A+B-B1\",\"updateBy\":2000681,\"updateByType\":5,\"updateTime\":\"2016-05-09 15:54:00\",\"valid\":1},{\"id\":9,\"groupCode\":\"D\",\"groupName\":\"额度恢复D\",\"itemCode\":\"RESTORE_AMOUNT_RENTER_REPAY_RENTS\",\"itemName\":\"租客还款本金金额\",\"comments\":\"租客逾期费用不计入\",\"rate1\":1.00,\"rate2\":1,\"calcuteExp\":\"A+B-C+租客还款金额\",\"updateBy\":2000681,\"updateByType\":5,\"updateTime\":\"2016-05-09 15:54:00\",\"valid\":1},{\"id\":10,\"groupCode\":\"D\",\"groupName\":\"额度恢复D\",\"itemCode\":\"RESTORE_AMOUNT_LANDLORD_BUYBACKS\",\"itemName\":\"房东买回本金金额\",\"comments\":\"房东买回逾期费用、滞纳金、退货手续费不计入；单笔交易对应恢复额度D≤该笔交易对应放款净额\",\"rate1\":1.00,\"rate2\":1,\"calcuteExp\":\"A+B-C+房东买回本金金额\",\"updateBy\":2000681,\"updateByType\":5,\"updateTime\":\"2016-05-09 15:54:00\",\"valid\":1}]','LOAN_CREDIT_CONFIG','房东信用配置','房东信用配置',current_timestamp,5,2000681,'3','0');

/*房东动态规模额度上限*/
insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)
values('LOAN_CREDIT_RANGEAMOUNT_MAX_3_0','500000','LOAN_CREDIT_RANGEAMOUNT','房东动态规模额度上限',"房东动态规模额度上限",'2016-04-23 18:32:33',5,2000681,'3','0');

/*房东动态规模额度下限*/
insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)
values('LOAN_CREDIT_RANGEAMOUNT_MIN_3_0','0','LOAN_CREDIT_RANGEAMOUNT','房东动态规模额度下限',"房东动态规模额度下限",'2016-04-23 18:34:04',5,2000681,'3','0');

/*线上支付动态额度上限*/
insert into `comm_sysconfig` (`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)
values('LOAN_CREDIT_ONLINETRADINGAMOUNT_MAX_3_0','2000000','LOAN_CREDIT_ONLINETRADINGAMOUNT','线上支付动态额度上限','线上支付动态额度上限',current_timestamp,5,2000681,'3','0');

/*线上支付动态额度下限*/
insert into `comm_sysconfig` (`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)
values('LOAN_CREDIT_ONLINETRADINGAMOUNT_MIN_3_0','0','LOAN_CREDIT_ONLINETRADINGAMOUNT','线上支付动态额度下限','线上支付动态额度下限',current_timestamp,5,2000681,'3','0');

/*
上海 cityid 289
北京 cityid 131
深圳 cityid 340
*/
insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)
values('LOAN_MOGO_REPAY_REGULAR_KEY_3_289','15','LOAN_MOGO_REPAY_REGULAR','上海蘑菇还款日配置','新增jyc-(上海)的蘑菇还还款提前15天',current_timestamp,5,2000681,'3','289');

insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)
values('LOAN_MOGO_REPAY_REGULAR_KEY_3_131','30','LOAN_MOGO_REPAY_REGULAR','北京蘑菇还款日配置','新增jyc-(北京)的蘑菇还还款提前30天',current_timestamp,5,2000681,'3','131');

insert into `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)
values('LOAN_MOGO_REPAY_REGULAR_KEY_3_340','30','LOAN_MOGO_REPAY_REGULAR','深圳蘑菇还款日配置','新增jyc-(深圳)的蘑菇还还款提前30天',current_timestamp,5,2000681,'3','340');

