/* Database name `mogoroomdb`, 房源评分明細表，删除brandId，brandId可以用landlordId替代 */
USE mogoroomdb;
ALTER TABLE find_roomscore_detail DROP COLUMN brandId;
