/* Database name `mogoroomdb` , coms_hotbrand表添加序列字段 */
use mogoroomdb

alter table coms_hotbrand add column sort  int(4) not null default 0 comment '推荐品牌的序列';