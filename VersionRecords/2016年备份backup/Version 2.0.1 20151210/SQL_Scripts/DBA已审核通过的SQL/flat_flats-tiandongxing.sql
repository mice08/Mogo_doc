/*  Database name `mogoroomdb` ，添加房源等级说明*/ 
use mogoroomdb; 

alter table flat_flats modify column level int(11) comment '房源等级(1精品房源，2、3、4是普通房源，目前录入默认会是2；1/2/3/4分别对应A/B/C/D)';
