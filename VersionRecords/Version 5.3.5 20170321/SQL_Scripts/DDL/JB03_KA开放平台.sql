use mogoroomdb;
/*预约订单表*/
/*
第三方开放平台更新预约订单表状态使用该字段作为条件
*/
create index reservationNum on oder_reservationorder(reservationNum);