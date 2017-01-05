use mogoroomdb;

/* 上海通用模板 */
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('289', '蘑菇标准合同模板', 'TY001SH', '1', '1', now(), '1', now(),'蘑菇标准合同模板(上海)', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('289', '蘑菇标准合同模板英文版', 'TY002SH', '1', '1', now(), '1', now(),'House Lease Contract(Shanghai)', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('289', '蘑菇免押金合同模板', 'TY003SH', '1', '1', now(), '1', now(),'蘑菇标准合同模板-免押金(上海)', '1');
                                                                                                                                                   
/* 北京通用模板 */                                                                                                                                 
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('131', '蘑菇标准合同模板', 'TY001BJ', '1', '1', now(), '1', now(),'居住房屋租赁合同(北京)', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('131', '蘑菇标准合同模板英文版', 'TY002BJ', '1', '1', now(), '1', now(),'House Lease Contract(Beijing)', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('131', '蘑菇免押金合同模板', 'TY003BJ', '1', '1', now(), '1', now(),'居住房屋租赁合同-免押金(北京)', '1');
                                                                                                                                                   
/* 深圳通用模板 */                                                                                                                                 
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('340', '蘑菇标准合同模板', 'TY001SZ', '1', '1', now(), '1', now(),'居住房屋租赁合同(深圳)', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('340', '蘑菇标准合同模板英文版', 'TY002SZ', '1', '1', now(), '1', now(),'House Lease Contract(Shenzhen)', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('340', '蘑菇免押金合同模板', 'TY003SZ', '1', '1', now(), '1', now(),'居住房屋租赁合同-免押金(深圳)', '1');
                                                                                                                                                   
                                                                                                                                                   
/* 纸制合同- 全国 模板 */                                                                                                                        
INSERT INTO `cntr_contract_templet` (`templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('纸质合同模板', 'TY00000', '3', '1', now(), '1', now(),'纸质合同模板(全国)', '1');

/* 历史模板- 合租 模板 */                                                                                                                        
INSERT INTO `cntr_contract_templet` (`templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('历史-合租模板1', 'HIS_HZ001', '1', '3', now(), '1', now(),'合租模板(2010/01/01 00:00至2016/09/07 03:05)', '1');
INSERT INTO `cntr_contract_templet` (`templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('历史-合租模板2', 'HIS_HZ002', '1', '3', now(), '1', now(),'合租模板(2016/09/07 03:05至2016/11/09 00:26)', '1');
INSERT INTO `cntr_contract_templet` (`templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('历史-合租模板3', 'HIS_HZ003', '1', '3', now(), '1', now(),CONCAT('合租模板(2016/11/9  0:26:41至',now(),')'), '1');

/* 整租 模板 */                                                                                                                        
INSERT INTO `cntr_contract_templet` (`templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('历史-整租模板1', 'HIS_ZZ001', '1', '3', now(), '1', now(),'合租模板(2010/01/01 00:00至2016/09/07 03:05)', '1');
INSERT INTO `cntr_contract_templet` (`templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('历史-整租模板2', 'HIS_ZZ002', '1', '3', now(), '1', now(),'合租模板(2016/09/07 03:05至2016/11/09 00:26)', '1');
INSERT INTO `cntr_contract_templet` (`templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('历史-整租模板3', 'HIS_ZZ003', '1', '3', now(), '1', now(),CONCAT('合租模板(2016/11/9  0:26:41至',now(),')'), '1');
  
/* 自营 模板 */                                                                                                                        
INSERT INTO `cntr_contract_templet` (`templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('历史-自营模板1', 'HIS_ZY001', '1', '3', now(), '1', now(),'自营模板(2010/01/01 00:00至2016/09/07 03:05)', '1');
INSERT INTO `cntr_contract_templet` (`templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('历史-自营模板2', 'HIS_ZY002', '1', '3', now(), '1', now(),'自营模板(2016/09/07 03:05至2016/09/26 19:07)', '1');
INSERT INTO `cntr_contract_templet` (`templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('历史-自营模板3', 'HIS_ZY003', '1', '3', now(), '1', now(),'自营模板(2016/09/26 19:07至2016/11/09 00:26)', '1');
INSERT INTO `cntr_contract_templet` (`templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('历史-自营模板4', 'HIS_ZY004', '1', '3', now(), '1', now(),'自营模板(2016/11/09 00:26至2016/11/18 15:03)', '1');

/* 1号房东(自营) 模板 */   
INSERT INTO `cntr_contract_templet` (landlordId,cityId,`templetName`, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES (1,289,'蘑菇公寓合同模板', 'ZL0000001001', '2', '1', now(), '1', now(),'生效时间2016/11/18 15:03', '1');
