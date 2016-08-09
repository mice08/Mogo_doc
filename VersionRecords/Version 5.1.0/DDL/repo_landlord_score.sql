/*  Database name `mogoroomdb` ，修改品牌V分表为房东评分表，原表变为视图 */
use mogoroomdb;

ALTER TABLE brand_vscore COMMENT = '房东评分表';

ALTER TABLE brand_vscore ADD COLUMN `rankingType` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评分类别(0:V分 1:活跃分)' AFTER `landlordId`; 

ALTER TABLE brand_vscore RENAME TO repo_landlord_score;

DROP VIEW IF EXISTS brand_vscore;

CREATE VIEW brand_vscore
AS 
SELECT id AS id,
landlordId AS landlordId,
rankingType AS rankingType,
dimensionName AS dimensionName,
dimensionValue AS dimensionValue,
STATUS AS STATUS,
createBy AS createBy,
createByType AS createByType,
createTime AS createTime,
updateBy AS updateBy,
updateByType AS updateByType,
updateTime AS updateTime
FROM repo_landlord_score;