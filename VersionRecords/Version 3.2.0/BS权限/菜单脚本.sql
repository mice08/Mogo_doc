INSERT INTO perm_functioninfo ( fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES('0000011','聚有财','','11','0','0','1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) VALUES('1268512','租金宝资质管理','','12','1',(SELECT id FROM perm_functioninfo e WHERE e.fname = '聚有财'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) VALUES('1268529','贷款管理','','29','1',(SELECT id FROM perm_functioninfo e WHERE e.fname = '聚有财'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) VALUES('1268501','还款管理','','1','1',(SELECT id FROM perm_functioninfo e WHERE e.fname = '聚有财'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) VALUES('1268553','基准费率和还款日设置','','53','1',(SELECT id FROM perm_functioninfo e WHERE e.fname = '聚有财'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) VALUES('1268554','活动优惠费率设置','','54','1',(SELECT id FROM perm_functioninfo e WHERE e.fname = '聚有财'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel,  functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('2273355','基准费率和还款日设置A','rate/setRateAndRefund','55','2','2733','1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '基准费率和还款日设置'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel,  functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('2273456','活动优惠费率设置A','rate/temPreferentialSettings','56','2','2734','1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '活动优惠费率设置'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel,  functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('2268627','平台房东信用额度配置','rentVerify/toCreditTotalSet','27','2','2686','1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel,  functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('2268621','租金宝资质列表','jycLandlordCredit/listCredits','21','2','2686','1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel,  functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('2268613','租金宝申请列表','rentVerify/listRentVerify','13','2','2686','1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel,  functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('2270437','租金宝财务放款','loanManage/payPlanList','37','2','2704','1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '贷款管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel,  functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('2270431','蘑菇宝申请管理','mogoManage/listMogoContract','31','2','2704','1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '贷款管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel,  functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('2270443','租金宝贷款管理','loanManage/loanManageList','43','2','2704','1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '贷款管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel,  functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('2272050','贷款买回列表','loanManage/buybackList','50','2','2720','1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '还款管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel,  functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('2272008','逾期信息统计','loanManage/overdueInfoStat','8','2','2720','1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '还款管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel,  functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('2272002','还款列表','loanManage/repayList','2','2','2720','1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '还款管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel,  functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('2272005','租客逾期催款列表','loanManage/reminderPaymentList','5','2','2720','1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '还款管理'));



INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3268714','租金宝附件页','rentVerify/toRentAnnex','14','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3268715','租金宝附件上传','rentVerify/rentAnnexUpLoad','15','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3268716','租金宝附件下载','rentVerify/rentAnnexDown','16','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3268717','租金宝附件删除','rentVerify/rentAnnexDel','17','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3268718','租金宝一审页面','rentVerify/toOneVerify','18','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3268719','租金宝一审','rentVerify/oneVerify','19','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3268720','租金宝一审详情页','rentVerify/oneVerifyDetail','20','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3268721','租金宝二审','rentVerify/twoVerify','21','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3269622','信用额度编辑页面','jycLandlordCredit/toEditCredit','22','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3269623','信用额度详情页面','jycLandlordCredit/toCreditDetail','23','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3269624','保存房东信用额度','jycLandlordCredit/saveLandlordCredit','24','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3269625','暂停或终止租金宝','jycLandlordCredit/pauseOrStopCredit','25','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3269626','恢复租金宝','jycLandlordCredit/restoreCredit','26','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3270228','平台房东信用额度配置','rentVerify/saveCreditTotalSet','28','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '平台房东信用额度配置'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3270532','蘑菇宝详情页面','mogoManage/toContractDetail','32','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝申请管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3270533','蘑菇宝审核','mogoManage/approveLoanContract','33','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝申请管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3270534','款项到位','mogoManage/confirmLoanReceived','34','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝申请管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3270535','强制退房','mogoManage/forceCheckOut','35','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝申请管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3270536','重新发起申请','mogoManage/sendApply','36','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝申请管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3271138','查询租金宝财务放款列表','loanManage/payPlanList','38','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝财务放款'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3271139','导出租金宝财务放款列表','loanManageExport/payPlanListExport','39','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝财务放款'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3271140','确认放款给房东','loanManage/affirmLoan','40','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝财务放款'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3271141','房东智能查询','landlordPayPlan/autoCompleteQueryLand','41','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝财务放款'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3271142','租客智能查询','landlordPayPlan/autoCompleteQueryRenter','42','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝财务放款'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3271143','拓展员智能查询','landlord/getEmployee','43','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝财务放款'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3271844','查询租金宝贷款列表','loanManage/loanManageList','44','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝贷款管理'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3272103','查询还款列表','loanManage/repayList','3','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '还款列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3272104','导出还款列表','loanManageExport/repayListExport','4','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '还款列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3272406','查询租客逾期催款列表','loanManage/reminderPaymentList','6','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租客逾期催款列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3272407','导出租客逾期催款列表','loanManageExport/reminderPaymentListExport','7','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租客逾期催款列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3272709','查询逾期信息统计','loanManage/overdueInfoStat','9','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '逾期信息统计'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3272749','导出逾期信息统计','loanManageExport/overdueInfoStatExport','49','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '逾期信息统计'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3273051','查询贷款买回列表','loanManage/buybackList','51','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '贷款买回列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3273052','导出贷款买回列表','loanManageExport/buybackListExport','52','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '贷款买回列表'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3273657','修改城市还款日','rate/setRefund','57','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '活动优惠费率设置'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3273658','添加活动费率','rate/addLoanCoupActivity','58','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '活动优惠费率设置'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3273659','添加相关房东','rate/activityForLandlordList','59','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '活动优惠费率设置'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3273660','添加活动费率实现','rate/addRateActivityDo','60','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '活动优惠费率设置'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3273661','修改活动费率状态','rate/changeCoupActivityStatus','61','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '活动优惠费率设置'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3273662','查看管理房东','rate/preFindUser','62','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '活动优惠费率设置'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3273663','预增加房东','rate/preAddUser','63','3','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '活动优惠费率设置'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3273664','添加房东关联关系','rate/attachUserToCoupActivity','64','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '活动优惠费率设置'));
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel, functionpId) VALUES('3273694','去房东和费率的绑定','rate/detachUserFromCoupActivity','94','3','0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '活动优惠费率设置'));
