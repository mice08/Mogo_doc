/* Database name `mogoroomdb` */

use mogoroomdb;

/*��ʼ����ȡCA��ͬ��Ŵ�������*/
INSERT INTO `comm_dictionary` (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES ('numLimit-1','numLimit',1,1,150,1,'numLimit-1');
/*��ʼ��ʵ����֤��������*/
INSERT INTO `comm_dictionary` (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES ('numLimit-2','numLimit',2,2,450,1,'numLimit-2');

/*CA��֤�ȴ���ͬģ��*/
INSERT INTO cntr_contract_templet (cityId,templetName,templetPath,createBy,createByType,lang,templetCode,templetType,STATUS,createTime,belongContractType,updateTime,remark,valid) VALUES (0, 'CA��֤�ȴ���ͬģ��', 'common/CAWAIT.vm', -1, -1, 1, 'CAWAIT', '1', '3', now(),'1', now(), 'CA��֤�ȴ���ͬģ��', '1');
