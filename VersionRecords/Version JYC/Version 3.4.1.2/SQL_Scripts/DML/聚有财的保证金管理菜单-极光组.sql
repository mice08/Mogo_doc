/* ���вƵı�֤�����˵� */
USE mogoroomdb;

INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '�������'),4,0)),'02')),'��֤�����','loanManage/depositManageList','4','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '�������'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '��֤�����'),4,0)),'01')),'��ѯ��֤���б�','loanManage/depositManageList','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '��֤�����'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '��֤�����'),4,0)),'02')),'������֤���б�','loanManageExport/depositManageListExport','2','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '��֤�����'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');