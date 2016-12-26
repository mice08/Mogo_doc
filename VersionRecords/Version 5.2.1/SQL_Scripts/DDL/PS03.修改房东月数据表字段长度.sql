/* Database name `mogoroomdb`, 修改房东月数据表字段长度 */
USE mogoroomdb;

ALTER TABLE repo_landlord_monthdata MODIFY COLUMN recordDate VARCHAR(7) ;