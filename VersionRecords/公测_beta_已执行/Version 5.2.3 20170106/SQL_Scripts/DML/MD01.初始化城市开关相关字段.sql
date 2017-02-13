use mogoroomdb;

/*初始化城市开关相关字段*/
UPDATE city SET isWebsite = 1, isFlatsInput = 1 WHERE id IN (289, 131, 340);