/* use mogoroomdb ，将列类型为decimal(12,2)的恢复为double,，新版本发布时不运行 */

use mogoroomdb;

alter table bill_checkbill_weixin modify column refundMoney double;

alter table bill_checkbill_zhifubao  modify column comeMoney  double;

alter table bill_checkbill_zhifubao  modify column outMoney  double;

alter table bill_checkbill_zhifubao  modify column accountMoney  double;

alter table bill_checkbill_base  modify column price  double;

alter table bill_loan  modify column money  double;

alter table bill_paylog_zhifubao modify column total_fee double;

alter table bill_paylog_zhifubao modify column quantity double;

alter table bill_paylog_zhifubao modify column price double;

alter table bill_paymentrecord modify column money double;

alter table bill_repayment modify column money double;

alter table bill_repayment modify column payMoney double;

alter table bill_salebill modify column amount double;

alter table bill_saleshouldaccount modify column money double;

alter table bill_saleshouldaccount modify column realPayMoney double;

alter table bill_saleshouldaccount modify column preferentialMoney double;

alter table bill_waterbill modify column fluctuantMoney double;

alter table bill_weijinwater modify column money double;

alter table bill_weijinwater modify column money double;

alter table cntr_salecontract modify column sourceRentPrice double;

alter table cntr_salecontract modify column realRentPrice double;

alter table cntr_salecontract modify column realRentPrice double;

alter table flat_flats modify column area double;

alter table flat_flats_prototype modify column area double;

alter table flat_room_prototype modify column roomScore double;

alter table flat_room  modify column roomScore double;

alter table flat_room  modify column bookingPrice double;

alter table flat_room  modify column salePrice double;

alter table flat_room  modify column roomPrice double;

alter table flat_room  modify column area double;

alter table flat_room_prototype  modify column bookingPrice double;

alter table flat_room_prototype  modify column salePrice double;

alter table flat_room_prototype  modify column roomPrice double;

alter table flat_room_prototype  modify column area double;


alter table oder_bookorder  modify column deposit double;

alter table oder_businessorder  modify column payTotalAccount double;

alter table oder_businessorder  modify column balanceAccount double;

alter table oder_refuseorderrecord  modify column liquidatedDamages double;


alter table user_useraccount  modify column balance double;

alter table user_useraccount  modify column frozenBalance double;

alter table user_useraccounttemp  modify column balance double;

alter table user_wateraccount  modify column frozenBalance double;

alter table user_wateraccount  modify column fluctuantMoney double;