/*
业主信息
没有记录业主住址
指定房东创建时间、业主创建时间截止为16年6月1号
查询均为有效数据
*/
SELECT 
  host_flats_relation.flat_id '房屋唯一标识码',
  host_flats_relation.host_id '业主唯一标识码',
  user_landlord.id '房东唯一标识码',
  SUBSTRING(user_info.card_id, 1, 3) '身份证号前3位',
  DATE_FORMAT(rent_start_date, '%Y-%m-%d') '租约开始日期',
  DATE_FORMAT(rent_end_date, '%Y-%m-%d') '租约结束日期',
  host_flats_relation.pay_type '付款方式',
  host_flats_relation.create_time '创建时间' 
FROM
  host_flats_relation 
  JOIN user_landlord 
    ON user_landlord.id = host_flats_relation.landlord_id 
  JOIN user_info 
    ON user_info.id = host_flats_relation.host_id 
WHERE user_landlord.createtime < '2016-06-01 00:00:00' 
  AND user_info.create_time < '2016-01-01 00:00:00' 
  AND host_flats_relation.status = 1 
  AND user_info.status = 1 