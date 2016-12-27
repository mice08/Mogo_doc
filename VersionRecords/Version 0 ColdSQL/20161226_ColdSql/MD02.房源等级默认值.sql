use mogoroomdb;

/* 执行添加默认值sql前先把系统中所有为空的更新下 */
UPDATE flat_flats SET LEVEL = 2 WHERE LEVEL IS NULL;
/* 房源等级默认值且不可为空 */
ALTER TABLE flat_flats MODIFY LEVEL INT(11) NOT NULL DEFAULT '2' COMMENT '房源等级(1精品房源，2、3、4是普通房源，目前录入默认会是2；1/2/3/4分别对应A/B/C/D)';

