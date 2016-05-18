/* Database name `mogoroomdb` , 公寓历史表添加字段，是否是自动更新 */
use mogoroomdb;
ALTER TABLE flat_flats_his ADD COLUMN isAutoUpdate TINYINT(1) DEFAULT '0' COMMENT '是否是自动更新(0:否 1:是)';