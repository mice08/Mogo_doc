/*  Database name `mogoroomdb` 新增蘑菇分排行和击败占比 */
use mogoroomdb;

ALTER TABLE repo_alldetail ADD COLUMN mogoScoreRank INT(6)  NULL COMMENT  '房东蘑菇分排行',
ADD COLUMN mogoScoreRate DECIMAL(5,2)  NULL COMMENT '房东蘑菇分全国击败占比';
