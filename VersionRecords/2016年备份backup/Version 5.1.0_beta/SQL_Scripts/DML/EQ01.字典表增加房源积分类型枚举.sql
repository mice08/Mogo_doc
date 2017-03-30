/* Database name `mogoroomdb` , 新增房源积分枚举对应的字典表记录*/
USE mogoroomdb;

#新增字典表房源积分维度类型
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('rs_user_exp', 'roomScoreType', '1', '1', '用户体验', 'rs_user_exp'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('rs_cost_per', 'roomScoreType', '2', '2', '性价比', 'rs_cost_per'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('rs_room_hot', 'roomScoreType', '3', '3', '房源热度', 'rs_room_hot'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('rs_sup_fac', 'roomScoreType', '4', '4', '配套设施', 'rs_sup_fac'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('rs_room_level', 'roomScoreType', '5', '5', '房源等级', 'rs_room_level'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('rs_act_score', 'roomScoreType', '6', '6', '房东活跃分', 'rs_act_score'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('rs_pre_brand', 'roomScoreType', '7', '7', '优选品牌', 'rs_pre_brand'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('rs_rented', 'roomScoreType', '8', '8', '历史出租记录', 'rs_rented'); 