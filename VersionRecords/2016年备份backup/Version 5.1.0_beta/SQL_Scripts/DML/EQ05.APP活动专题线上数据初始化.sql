/* Database name `mogoroomdb`�� ��ʼ�������Ѵ��ڵ�APP�ר���еķ�Դ�Ƽ��洢��ʽ */

USE mogoroomdb;

UPDATE coms_context SET context=CONCAT('{"roomId":"',context,'","remark":""}') WHERE pid IS NOT NULL AND contenttype = 3 AND LENGTH(0+context)= LENGTH(context);

UPDATE coms_menu SET url="cms/findContextForPcActivityQuery" WHERE code=204009;