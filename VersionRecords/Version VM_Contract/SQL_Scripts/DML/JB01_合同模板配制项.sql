use mogoroomdb;

/* 上海通用模板 升级 */
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang,`templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('289', '蘑菇标准合同模板','common/TY005SH.vm',-1,-1,1,'TY005SH', '1', '1', now(), '1', now(),'您可以在此标准模板基础上申请个性化合同模板', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('289', '蘑菇标准合同模板英文版','common/TY006SH.vm',-1,-1,1, 'TY006SH', '1', '1', now(), '1', now(),'该模板为标准模板的英文翻译版', '1');
                                                                                                                                                   
/* 北京通用模板 升级*/                                                                                                                                 
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('131', '蘑菇标准合同模板', 'common/TY005BJ.vm',-1,-1,1,'TY005BJ', '1', '1', now(), '1', now(),'您可以在此标准模板基础上申请个性化合同模板', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('131', '蘑菇标准合同模板英文版','common/TY006BJ.vm',-1,-1,1,'TY006BJ', '1', '1', now(), '1', now(),'该模板为标准模板的英文翻译版', '1');
                                                                                                                                                   
/* 深圳通用模板 升级*/                                                                                                                                 
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('340', '蘑菇标准合同模板','common/TY005SZ.vm',-1,-1,1, 'TY005SZ', '1', '1', now(), '1', now(),'您可以在此标准模板基础上申请个性化合同模板', '1');
INSERT INTO `cntr_contract_templet` (`cityId`, `templetName`,templetPath,createBy,createByType,lang, `templetCode`, `templetType`, `status`, `createTime`,`belongContractType`,`updateTime`, `remark`, `valid`) VALUES ('340', '蘑菇标准合同模板英文版','common/TY006SZ.vm',-1,-1,1,'TY006SZ', '1', '1', now(), '1', now(),'该模板为标准模板的英文翻译版', '1');
     

/*系统默认-设置历史过期-每一个城市需要配制一项*/
INSERT INTO `comm_dictionary` (`groupName`,`code`,`sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('contract-templet-default-overdue','contract-templet-default-overdue-289', '1', '289', 'TY001SH ', '1', NULL, 'TY001SH');
INSERT INTO `comm_dictionary` (`groupName`,`code`,`sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('contract-templet-default-overdue','contract-templet-default-overdue-131', '1', '131', 'TY001BJ ', '1', NULL, 'TY001BJ');
INSERT INTO `comm_dictionary` (`groupName`,`code`,`sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('contract-templet-default-overdue','contract-templet-default-overdue-340', '1', '340', 'TY001SZ ', '1', NULL, 'TY001SZ');

/*系统默认-合同模板编号-每一个城市需要配制一项*/
INSERT INTO `comm_dictionary` (`groupName`,`code`,`sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('contract-templet-default','contract-templet-default-289', '1', '289', 'TY005SH ', '1', NULL, 'TY005SH');
INSERT INTO `comm_dictionary` (`groupName`,`code`,`sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('contract-templet-default','contract-templet-default-131', '1', '131', 'TY005BJ ', '1', NULL, 'TY005BJ');
INSERT INTO `comm_dictionary` (`groupName`,`code`,`sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('contract-templet-default','contract-templet-default-340', '1', '340', 'TY005SZ ', '1', NULL, 'TY005SZ');

/*系统默认-合同模板编号-每一个城市需要配制一项*/
INSERT INTO `comm_dictionary` (`groupName`,`code`,`sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('contract-templet-disable','contract-templet-disable-289-1', '1', '289', 'TY006SH ', '1', NULL, 'TY006SH');
INSERT INTO `comm_dictionary` (`groupName`,`code`,`sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('contract-templet-disable','contract-templet-disable-131-1', '1', '131', 'TY006BJ ', '1', NULL, 'TY006BJ');
INSERT INTO `comm_dictionary` (`groupName`,`code`,`sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES ('contract-templet-disable','contract-templet-disable-340-1', '1', '340', 'TY006SZ ', '1', NULL, 'TY006SZ');
