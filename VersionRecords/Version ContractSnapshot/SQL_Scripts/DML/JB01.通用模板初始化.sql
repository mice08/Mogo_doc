use mogoroomdb;

/* 上海通用模板 */
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang,`templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('289', '蘑菇标准合同模板','common/TY001SH.vm',-1,-1,1,'TY001SH', '1', '1', now(), '1', now(),'您可以在此标准模板基础上申请个性化合同模板', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('289', '蘑菇标准合同模板英文版','common/TY002SH.vm',-1,-1,1, 'TY002SH', '1', '1', now(), '1', now(),'该模板为标准模板的英文翻译版', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('289', '蘑菇免押金合同模板','common/TY003SH.vm',-1,-1,1, 'TY003SH', '1', '1', now(), '1', now(),'该模板可用于免押金签约，您可在此基础申请个性化免押金合同模板', '1');
                                                                                                                                                   
/* 北京通用模板 */                                                                                                                                 
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('131', '蘑菇标准合同模板', 'common/TY001BJ.vm',-1,-1,1,'TY001BJ', '1', '1', now(), '1', now(),'您可以在此标准模板基础上申请个性化合同模板', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('131', '蘑菇标准合同模板英文版','common/TY002BJ.vm',-1,-1,1,'TY002BJ', '1', '1', now(), '1', now(),'该模板为标准模板的英文翻译版', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('131', '蘑菇免押金合同模板','common/TY003BJ.vm',-1,-1,1,'TY003BJ', '1', '1', now(), '1', now(),'该模板可用于免押金签约，您可在此基础申请个性化免押金合同模板', '1');
                                                                                                                                                   
/* 深圳通用模板 */                                                                                                                                 
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('340', '蘑菇标准合同模板','common/TY001SZ.vm',-1,-1,1, 'TY001SZ', '1', '1', now(), '1', now(),'您可以在此标准模板基础上申请个性化合同模板', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('340', '蘑菇标准合同模板英文版','common/TY002SZ.vm',-1,-1,1,'TY002SZ', '1', '1', now(), '1', now(),'该模板为标准模板的英文翻译版', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('340', '蘑菇免押金合同模板','common/TY003SZ.vm',-1,-1,1, 'TY003SZ', '1', '1', now(), '1', now(),'该模板可用于免押金签约，您可在此基础申请个性化免押金合同模板', '1');
                                                                                                                                                   
                                                                                                                                                   
/* 纸制合同- 全国 模板 */                                                                                                                        
INSERT INTO `cntr_contract_templet` (`cityId`,`templetName`,templetPath,createBy,createByType,lang,`templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES (0,'纸质合同模板','common/TY00000.vm',-1,-1,1, 'TY00000', '1', '3', now(), '1', now(),'纸质合同模板(全国)', '1');

/* 历史模板- 合租 模板 */                                                                                                                        
INSERT INTO `cntr_contract_templet` (`cityId`,`templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES (0,'历史-合租模板1','common/HIS_HZ001.vm',-1,-1,1, 'HIS_HZ001', '1', '3', now(), '1', now(),'合租模板(2010/01/01 00:00至2016/09/07 03:05)', '1');
INSERT INTO `cntr_contract_templet` (`cityId`,`templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES (0,'历史-合租模板2','common/HIS_HZ002.vm',-1,-1,1, 'HIS_HZ002', '1', '3', now(), '1', now(),'合租模板(2016/09/07 03:05至2016/11/09 00:26)', '1');
INSERT INTO `cntr_contract_templet` (`cityId`,`templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES (0,'历史-合租模板3','common/HIS_HZ003.vm',-1,-1,1, 'HIS_HZ003', '1', '3', now(), '1', now(),CONCAT('合租模板(2016/11/9  0:26:41至',now(),')'), '1');

/* 整租 模板 */                                                                                                                        
INSERT INTO `cntr_contract_templet` (`cityId`,`templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES (0,'历史-整租模板1','common/HIS_ZZ001.vm',-1,-1,1, 'HIS_ZZ001', '1', '3', now(), '1', now(),'合租模板(2010/01/01 00:00至2016/09/07 03:05)', '1');
INSERT INTO `cntr_contract_templet` (`cityId`,`templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES (0,'历史-整租模板2','common/HIS_ZZ002.vm',-1,-1,1, 'HIS_ZZ002', '1', '3', now(), '1', now(),'合租模板(2016/09/07 03:05至2016/11/09 00:26)', '1');
INSERT INTO `cntr_contract_templet` (`cityId`,`templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES (0,'历史-整租模板3','common/HIS_ZZ003.vm',-1,-1,1, 'HIS_ZZ003', '1', '3', now(), '1', now(),CONCAT('合租模板(2016/11/9  0:26:41至',now(),')'), '1');
  
/* 自营 模板 */                                                                                                                        
INSERT INTO `cntr_contract_templet` (`cityId`,`templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES (0,'历史-自营模板1','common/HIS_ZY001.vm',-1,-1,1, 'HIS_ZY001', '1', '3', now(), '1', now(),'自营模板(2010/01/01 00:00至2016/09/07 03:05)', '1');
INSERT INTO `cntr_contract_templet` (`cityId`,`templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES (0,'历史-自营模板2','common/HIS_ZY002.vm',-1,-1,1, 'HIS_ZY002', '1', '3', now(), '1', now(),'自营模板(2016/09/07 03:05至2016/09/26 19:07)', '1');
INSERT INTO `cntr_contract_templet` (`cityId`,`templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES (0,'历史-自营模板3','common/HIS_ZY003.vm',-1,-1,1, 'HIS_ZY003', '1', '3', now(), '1', now(),'自营模板(2016/09/26 19:07至2016/11/09 00:26)', '1');
INSERT INTO `cntr_contract_templet` (`cityId`,`templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES (0,'历史-自营模板4','common/HIS_ZY004.vm',-1,-1,1, 'HIS_ZY004', '1', '3', now(), '1', now(),'自营模板(2016/11/09 00:26至2016/11/18 15:03)', '1');

/* 1号房东(自营) 模板 */   
INSERT INTO `cntr_contract_templet` (landlordId,cityId,`templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES (1,289,'蘑菇公寓合同模板','private/1/ZL0000001001.vm',-1,-1,1,  'ZL000000000001', '2', '1', now(), '1', now(),'生效时间2016/11/18 15:03', '1');
