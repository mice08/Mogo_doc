/*��ʼ��BSϵͳ����˵��ع�*/
USE mogoroomdb;
BEGIN;

 SET @exportId = (SELECT id FROM `perm_functioninfo` WHERE fname = '�¸�©��������');
    DELETE FROM `perm_functioninfo` WHERE id = @exportId;
    
    SET @chartId = (SELECT id FROM `perm_functioninfo` WHERE fname = 'Ģ���¸�ת����ͼ��');
    DELETE FROM `perm_functioninfo` WHERE id = @chartId;
    
    SET @listId = (SELECT id FROM `perm_functioninfo` WHERE fname = 'Ģ���¸�ת��©���б�');
    DELETE FROM `perm_functioninfo` WHERE id = @listId;

COMMIT;