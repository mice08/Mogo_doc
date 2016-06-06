/* Database name `mogoroomdb` , coms_hotbrand表添加序列字段 */
use mogoroomdb

alter table flat_room add column seq  int(4) not null default 0 comment '推荐品牌的序列';