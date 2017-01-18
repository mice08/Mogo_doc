USE mogoroomdb;

/* supp_complain-初始化意见类型 */
UPDATE supp_complain set complainType = CASE content
WHEN '房源已出租' THEN 1
WHEN '信息不正确' THEN 2
WHEN '电话没打通' THEN 3
WHEN '态度不友好' THEN 4
WHEN '预约没回电' THEN 5
WHEN '未免押金' THEN 6
ELSE 7
END