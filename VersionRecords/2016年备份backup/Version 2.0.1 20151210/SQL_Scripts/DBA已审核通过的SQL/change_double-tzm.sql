/* use mogoroomdb ，将列类型为double的修改为decimal(12,2) */

use mogoroomdb;

alter table bill_checkbill_weixin modify column refundMoney decimal(12,2);

alter table bill_checkbill_zhifubao  modify column comeMoney  decimal(12,2);

alter table bill_checkbill_zhifubao  modify column outMoney  decimal(12,2);

alter table bill_checkbill_zhifubao  modify column accountMoney  decimal(12,2);

alter table bill_checkbill_base  modify column price  decimal(12,2);

alter table bill_loan  modify column money  decimal(12,2);

alter table bill_paylog_zhifubao modify column total_fee decimal(12,2);

alter table bill_paylog_zhifubao modify column quantity decimal(12,2);

alter table bill_paylog_zhifubao modify column price decimal(12,2);

alter table bill_paymentrecord modify column money decimal(12,2);

alter table bill_repayment modify column money decimal(12,2);

alter table bill_repayment modify column payMoney decimal(12,2);

alter table bill_salebill modify column amount decimal(12,2);

alter table bill_saleshouldaccount modify column money decimal(12,2);

alter table bill_saleshouldaccount modify column realPayMoney decimal(12,2);

alter table bill_saleshouldaccount modify column preferentialMoney decimal(12,2);

alter table bill_waterbill modify column fluctuantMoney decimal(12,2);

alter table bill_weijinwater modify column money decimal(12,2);

alter table bill_weijinwater modify column money decimal(12,2);

alter table cntr_salecontract modify column sourceRentPrice decimal(12,2);

alter table cntr_salecontract modify column realRentPrice decimal(12,2);

alter table cntr_salecontract modify column realRentPrice decimal(12,2);

alter table flat_flats modify column area decimal(12,2);

alter table flat_flats_prototype modify column area decimal(12,2);

alter table flat_room_prototype modify column roomScore decimal(12,2);

alter table flat_room  modify column roomScore decimal(12,2);

alter table flat_room  modify column bookingPrice decimal(12,2);

alter table flat_room  modify column salePrice decimal(12,2);

alter table flat_room  modify column roomPrice decimal(12,2);

alter table flat_room  modify column area decimal(12,2);

alter table flat_room_prototype  modify column bookingPrice decimal(12,2);

alter table flat_room_prototype  modify column salePrice decimal(12,2);

alter table flat_room_prototype  modify column roomPrice decimal(12,2);

alter table flat_room_prototype  modify column area decimal(12,2);


alter table oder_bookorder  modify column deposit decimal(12,2);

alter table oder_businessorder  modify column payTotalAccount decimal(12,2);

alter table oder_businessorder  modify column balanceAccount decimal(12,2);

alter table oder_refuseorderrecord  modify column liquidatedDamages decimal(12,2);


alter table user_useraccount  modify column balance decimal(12,2);

alter table user_useraccount  modify column frozenBalance decimal(12,2);

alter table user_useraccounttemp  modify column balance decimal(12,2);

alter table user_wateraccount  modify column frozenBalance decimal(12,2);

alter table user_wateraccount  modify column fluctuantMoney decimal(12,2);