/*  Database name `mogoroomdb`  BS岗位类型及城市初始化 */
use mogoroomdb;

BEGIN;
UPDATE orga_org SET areaCode='021' WHERE id=7
UPDATE orga_org SET areaCode='010' WHERE id=8
UPDATE orga_org SET areaCode='0755' WHERE id=9


UPDATE orga_org SET orgaOrgType='07' WHERE id IN (17,19,25)

UPDATE orga_org SET orgaOrgType='07',areaCode='021' WHERE fullPath LIKE CONCAT('%','>17','%')
UPDATE orga_org SET orgaOrgType='07',areaCode='010' WHERE fullPath LIKE CONCAT('%','>19','%')
UPDATE orga_org SET orgaOrgType='07',areaCode='0755' WHERE fullPath LIKE CONCAT('%','>25','%')

/*岗位表新添加type字段数据初始化*/
UPDATE orga_position SET orgaPositionType = 'manager' WHERE positionCode= '10';
UPDATE orga_position SET orgaPositionType = 'manager' WHERE positionCode= '11';
UPDATE orga_position SET orgaPositionType = 'manager' WHERE positionCode= '13';
UPDATE orga_position SET orgaPositionType = 'sales' WHERE positionCode= '12';
UPDATE orga_position SET orgaPositionType = 'sales' WHERE positionCode= '9';