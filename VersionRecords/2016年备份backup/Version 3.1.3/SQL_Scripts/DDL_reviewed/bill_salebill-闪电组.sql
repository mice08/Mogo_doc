/* Database name `mogoroomdb` , 账单表添加备注字段 */
use mogoroomdb

alter table bill_salebill add column remark varchar(128) null comment '备注';