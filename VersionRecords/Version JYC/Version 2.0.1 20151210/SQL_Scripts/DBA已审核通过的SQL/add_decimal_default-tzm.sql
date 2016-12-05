/* use mogoroomdb ，将列类型为double的修改为decimal(12,2) */

use mogoroomdb;

alter table bill_checkbill_weixin modify column refundMoney decimal(12,2) comment '退款金额';

alter table bill_checkbill_zhifubao  modify column comeMoney  decimal(12,2) comment '收入金额（+元）';

alter table bill_checkbill_zhifubao  modify column outMoney  decimal(12,2) comment '支出金额（-元）';

alter table bill_checkbill_zhifubao  modify column accountMoney  decimal(12,2) comment '账户余额（元）';

alter table bill_checkbill_base  modify column price  decimal(12,2) comment '交易金额';

alter table bill_loan  modify column money  decimal(12,2) comment '金额';

alter table bill_paylog_zhifubao modify column total_fee decimal(12,2) comment '该笔订单的总金额。请求时对应的参数，原样通知回来';

alter table bill_paylog_zhifubao modify column quantity decimal(12,2) comment '购买数量，固定取值为 1（请求 时使用的是 total_fee）。';

alter table bill_paylog_zhifubao modify column price decimal(12,2) comment 'price 等于 total_fee（请求时使 用的是 total_fee）';

alter table bill_paymentrecord modify column money decimal(12,2) comment '交易金额';

alter table bill_repayment modify column money decimal(12,2) comment '金额';

alter table bill_repayment modify column payMoney decimal(12,2) comment '已还金额';

alter table bill_salebill modify column amount decimal(12,2) comment '金额';

alter table bill_saleshouldaccount modify column money decimal(12,2) comment '金额';

alter table bill_saleshouldaccount modify column realPayMoney decimal(12,2) comment '已支付金额';

alter table bill_saleshouldaccount modify column preferentialMoney decimal(12,2) comment '优惠金额';

alter table bill_waterbill modify column fluctuantMoney decimal(12,2) comment '变动金额(支出为负，收入为正)';

alter table bill_weijinwater modify column money decimal(12,2) comment '交易金额';


alter table cntr_salecontract modify column sourceRentPrice decimal(12,2) comment '签约月租金价格(原价)';

alter table cntr_salecontract modify column realRentPrice decimal(12,2) comment '签约月租金价格(实际价)';

alter table flat_flats modify column area decimal(12,2) comment '面积';

alter table flat_flats_prototype modify column area decimal(12,2) default '0' comment '面积';

alter table flat_room_prototype modify column roomScore decimal(12,2) default '0' comment '房源评分';

alter table flat_room  modify column roomScore decimal(12,2) default '0' comment '房源评分';

alter table flat_room  modify column bookingPrice decimal(12,2) default '0' comment '预订金';

alter table flat_room  modify column salePrice decimal(12,2) default '0' comment '销售价';

alter table flat_room  modify column roomPrice decimal(12,2) default '0' comment '房屋价格';

alter table flat_room  modify column area decimal(12,2) default '0' comment '面积';

alter table flat_room_prototype  modify column bookingPrice decimal(12,2) default '0' comment '预订金';

alter table flat_room_prototype  modify column salePrice decimal(12,2) default '0' comment '销售价';

alter table flat_room_prototype  modify column roomPrice decimal(12,2) default '0' comment '房屋价格';

alter table flat_room_prototype  modify column area decimal(12,2) default '0' comment '面积';


alter table oder_bookorder  modify column deposit decimal(12,2) comment '定金';

alter table oder_businessorder  modify column payTotalAccount decimal(12,2) default '0' comment '金钱总额';

alter table oder_businessorder  modify column balanceAccount decimal(12,2) default '0' comment '余额金额';

alter table oder_refuseorderrecord  modify column liquidatedDamages decimal(12,2) comment '违约金';


alter table user_useraccount  modify column balance decimal(12,2) default '0' comment '余额';

alter table user_useraccount  modify column frozenBalance decimal(12,2) default '0' comment '冻结资金';


alter table user_wateraccount  modify column frozenBalance decimal(12,2) default '0' comment '冻结资金';

alter table user_wateraccount  modify column fluctuantMoney decimal(12,2) comment '变动金额(支出为负，收入为正)';



