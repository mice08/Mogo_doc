/* Database name `mogoroomdb` */

use mogoroomdb;

/*��ʼ����ȡCA��ͬ��Ŵ�������*/
INSERT INTO `comm_dictionary` (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES ('numLimit-1','numLimit',1,1,150,1,'numLimit-1');
/*��ʼ��ʵ����֤��������*/
INSERT INTO `comm_dictionary` (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES ('numLimit-2','numLimit',2,2,450,1,'numLimit-2');
/*CA���ܿ��� 0:�ر� 1:����*/
INSERT INTO `comm_dictionary` (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES ('system-ca-switch','system-ca-switch',1,1,0,1,'1');
/*CA��֤�ȴ���ͬģ��--���1(app)*/
INSERT INTO cntr_contract_templet (cityId,templetName,templetPath,createBy,createByType,lang,templetCode,templetType,STATUS,createTime,belongContractType,updateTime,remark,valid) VALUES (0, 'CA��֤�ȴ���ͬģ��(app)', 'common/CAWAIT001.vm', -1, -1, 1, 'CAWAIT001', '1', '3', now(),'1', now(), 'CA��֤�ȴ���ͬģ��', '1');
/*CA��֤�ȴ���ͬģ��--���2(pc)*/
INSERT INTO cntr_contract_templet (cityId,templetName,templetPath,createBy,createByType,lang,templetCode,templetType,STATUS,createTime,belongContractType,updateTime,remark,valid) VALUES (0, 'CA��֤�ȴ���ͬģ��(pc)', 'common/CAWAIT002.vm', -1, -1, 1, 'CAWAIT002', '1', '3', now(),'1', now(), 'CA��֤�ȴ���ͬģ��', '1');
