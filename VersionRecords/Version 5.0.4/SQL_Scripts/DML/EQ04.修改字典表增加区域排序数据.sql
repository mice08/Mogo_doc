/* Database name `mogoroomdb` , 修改字典表区域排序*/
USE mogoroomdb;

#修改燕郊旧数据
UPDATE comm_dictionary SET VALUE = '38' WHERE groupName = 'SEARCH_ORDER_BJ' AND VALUE = '17';
