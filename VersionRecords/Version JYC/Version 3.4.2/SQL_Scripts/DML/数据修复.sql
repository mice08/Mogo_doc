/*  Database name `mogoroomdb`  BS登录后自动跳转修改 */
use mogoroomdb;

UPDATE orga_position_url SET url = 'bd/findbdEmployeeTotleList' WHERE positionId = 3;
SELECT @fp:=GROUP_CONCAT(fullPath,id) FROM orga_org WHERE orgName = '上海总公司';
UPDATE orga_position_url SET url = 'bd/findbdContractManagerTotleList' WHERE orgid IN (SELECT id FROM orga_org WHERE fullPath LIKE CONCAT(@fp,">%") AND orgName IN('一区四部','二区一部','三区二部')) AND positionId =1;
UPDATE orga_position_url SET url = 'bd/findbdContractTotleList' WHERE orgid IN (SELECT id FROM orga_org WHERE fullPath LIKE CONCAT(@fp,">%") AND orgName IN('一区四部','二区一部','三区二部')) AND positionId =3;
