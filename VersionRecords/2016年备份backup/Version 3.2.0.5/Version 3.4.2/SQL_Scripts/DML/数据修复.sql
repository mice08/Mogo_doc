/*  Database name `mogoroomdb`  BS��¼���Զ���ת�޸� */
use mogoroomdb;

UPDATE orga_position_url SET url = 'bd/findbdEmployeeTotleList' WHERE positionId = 3;
SELECT @fp:=GROUP_CONCAT(fullPath,id) FROM orga_org WHERE orgName = '�Ϻ��ܹ�˾';
UPDATE orga_position_url SET url = 'bd/findbdContractManagerTotleList' WHERE orgid IN (SELECT id FROM orga_org WHERE fullPath LIKE CONCAT(@fp,">%") AND orgName IN('һ���Ĳ�','����һ��','��������')) AND positionId =1;
UPDATE orga_position_url SET url = 'bd/findbdContractTotleList' WHERE orgid IN (SELECT id FROM orga_org WHERE fullPath LIKE CONCAT(@fp,">%") AND orgName IN('һ���Ĳ�','����һ��','��������')) AND positionId =3;
