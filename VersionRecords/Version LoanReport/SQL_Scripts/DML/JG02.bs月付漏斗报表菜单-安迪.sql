/*��ʼ��BSϵͳ����˵�*/
USE mogoroomdb;

BEGIN;


/*1���˵�*/
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(1,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = 'Ģ������'),4,0)),'09')),'�¸�����','','32','1',(SELECT id FROM perm_functioninfo e WHERE e.fname = 'Ģ������'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


/*2���˵�*/
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '�¸�����' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = 'Ģ������') ),4,0)),'01')),'Ģ���¸�ת��©���б�','yuefuReport/findYueFuFunneList','1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '�¸�����' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = 'Ģ������') ),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '�¸�����' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = 'Ģ������') ),4,0)),'02')),'Ģ���¸�ת����ͼ��','yuefuReport/findYuefuFunneChart','1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '�¸�����' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = 'Ģ������') ),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

/*3���˵�*/
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = 'Ģ���¸�ת��©���б�'),4,0)),'01')),'�¸�©��������','loanManageExport/exportYuefuFunne','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = 'Ģ���¸�ת��©���б�'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


/*�޸ĵ����ṹ*/
SET @pId = (SELECT pf.id FROM perm_functioninfo pf WHERE fname = '�¸�����')  ;

SET @keyId = (SELECT id FROM perm_functioninfo WHERE fname = 'Ģ���¸�����ͳ��');

UPDATE `perm_functioninfo` SET functionpId =@pId  WHERE id = @keyId;


COMMIT;