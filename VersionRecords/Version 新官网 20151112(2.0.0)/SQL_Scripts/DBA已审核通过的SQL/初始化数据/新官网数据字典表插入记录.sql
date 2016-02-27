/* Database name `mogoroomdb` , 新官网数据字典表增加找房页面相关查询条件维护，用于生成seo枚举类 */
use mogoroomdb;
#出租方式
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('rentType-1', 'rentType', '1', '1', '单身公寓', 'fs1'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('rentType-2', 'rentType', '2', '2', '合租', 'fs2'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('rentType-3', 'rentType', '3', '3', '整租', 'fs3'); 

#品牌公寓
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('level-1', 'level', '1', '1', '精品', 'pz1'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('level-2', 'level', '2', '2', '舒适', 'pz2'); 

#室友性别
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('roomMateGender-1', 'roomMateGender', '1', '1', '都是美女', 'mv'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('roomMateGender-2', 'roomMateGender', '2', '2', '都是帅哥', 'sg'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('roomMateGender-3', 'roomMateGender', '3', '3', '异性空间', 'nv'); 


#可入住状态
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('readyDate-2', 'readyDate', '2', '2', '1周内', 'z1'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('readyDate-3', 'readyDate', '3', '3', '2周内', 'z2'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('readyDate-4', 'readyDate', '4', '4', '1月内', 'z3'); 


#房型
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('houseType-1', 'houseType', '1', '1', '一室户', 's1'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('houseType-2', 'houseType', '2', '2', '二室户', 's2'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('houseType-3', 'houseType', '3', '3', '三室户', 's3'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('houseType-4', 'houseType', '4', '4', '四室户', 's4'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('houseType-5', 'houseType', '5', '5', '五室户', 's5'); 


#房源类型   小区公寓房  酒店公寓房
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('flatsTagType-1', 'flatsTagType', '1', '1', '小区公寓房', 'gy1'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('flatsTagType-2', 'flatsTagType', '2', '2', '酒店式公寓', 'gy2');


#朝向
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('face-1', 'face', '1', '1', '东', 'd'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('face-2', 'face', '2', '2', '南', 'n'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('face-3', 'face', '3', '3', '西', 'x'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('face-4', 'face', '4', '4', '北', 'b'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('face-5', 'face', '5', '5', '东南', 'dn'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('face-6', 'face', '6', '6', '东北', 'db'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('face-7', 'face', '7', '7', '西南', 'xn'); 
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('face-8', 'face', '8', '8', '西北', 'xb');


#独卫
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('toilet-1', 'toilet', '1', '1', '独卫', 'dw'); 


#阳台
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('veranda-1', 'veranda', '1', '1', '阳台', 'yt'); 


#飘窗
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('bayWindow-1', 'bayWindow', '1', '1', '飘窗', 'pc'); 

#空调
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('airCond-1', 'airCond', '1', '1', '空调', 'kt'); 

#是否有图片
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `enValue`) VALUES ('hasPic-1', 'hasPic', '1', '1', '图片', 'zp'); 













