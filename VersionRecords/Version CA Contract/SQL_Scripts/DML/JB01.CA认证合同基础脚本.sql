/* Database name `mogoroomdb` */

use mogoroomdb;

/*初始化获取CA合同编号次数限制*/
INSERT INTO `comm_dictionary` (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES ('numLimit-1','numLimit',1,1,150,1,'numLimit-1');
/*初始化实名认证次数限制*/
INSERT INTO `comm_dictionary` (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES ('numLimit-2','numLimit',2,2,450,1,'numLimit-2');
/*CA功能开关 0:关闭 1:开启*/
INSERT INTO `comm_dictionary` (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) VALUES ('system-ca-switch','system-ca-switch',1,1,0,1,'1');
/*CA认证等待合同模板--风格1(app)*/
INSERT INTO cntr_contract_templet (cityId,templetName,templetPath,createBy,createByType,lang,templetCode,templetType,STATUS,createTime,belongContractType,updateTime,remark,valid) VALUES (0, 'CA认证等待合同模板(app)', 'common/CAWAIT001.vm', -1, -1, 1, 'CAWAIT001', '1', '3', now(),'1', now(), 'CA认证等待合同模板', '1');
/*CA认证等待合同模板--风格2(pc)*/
INSERT INTO cntr_contract_templet (cityId,templetName,templetPath,createBy,createByType,lang,templetCode,templetType,STATUS,createTime,belongContractType,updateTime,remark,valid) VALUES (0, 'CA认证等待合同模板(pc)', 'common/CAWAIT002.vm', -1, -1, 1, 'CAWAIT002', '1', '3', now(),'1', now(), 'CA认证等待合同模板', '1');
