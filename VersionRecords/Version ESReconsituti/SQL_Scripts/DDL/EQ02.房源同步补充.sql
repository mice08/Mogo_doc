/* Database name `mogoroomdb` */
USE mogoroomdb;

/*商圈表添加系统字段 */
ALTER TABLE city_business_area ADD COLUMN updateTime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间';
/*房间图片表添加系统字段 */
ALTER TABLE flat_room_picture ADD COLUMN updateTime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间';

/*房源数据综合表添加系统字段 */
ALTER TABLE find_room_detail_record ADD (
   flatsId INT(11) COMMENT '公寓id',
   cityId INT(11) COMMENT '城市id',
   districtId INT(11) COMMENT '行政区id',
   areaId INT(11) COMMENT '商圈id',
   communityId INT(11) COMMENT '小区id',
   tpShowPrice decimal(12,2) comment 'TP房间展示价格',
   landlordId INT(11) COMMENT '房东id'
);


/* 房源数据综合表修改字段长度 */
ALTER TABLE find_room_detail_record MODIFY COLUMN roomInfo VARCHAR(100) comment '房间描述';
/* 小区、商圈、行政区数据综合表修改字段长度 */
ALTER TABLE find_room_location_record MODIFY COLUMN station VARCHAR(650) comment '地铁站';
/* 品牌、房东、公寓数据综合表修改字段长度 */
ALTER TABLE find_room_fixed_record MODIFY COLUMN unit VARCHAR(20) comment '几单元';