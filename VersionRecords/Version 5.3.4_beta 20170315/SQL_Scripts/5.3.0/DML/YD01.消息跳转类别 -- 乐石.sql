/* 修改总部更改为总公司 */

use mogoroomdb;

# 报修列表-已解决
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappRepairResolvedList','APPJUMP','16','MODULE_PappRepairResolvedList','{}','1',NULL,'房东App报修列表-已解决');
  
# 报修详情页
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappRepairDetail','APPJUMP','17','MODULE_PappRepairDetail','{}','1',NULL,'房东App报修详情页');
  
# 登录页面
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappLogin','APPJUMP','18','MODULE_PappLogin','{}','1',NULL,'房东App登录页面');
  
# 房源详情页
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappRoomDetail','APPJUMP','19','MODULE_PappRoomDetail','{}','1',NULL,'房东App房源详情页');
  
# 集中式房态图-管理公寓
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappRoomStateDiagramJz','APPJUMP','20','MODULE_PappRoomStateDiagramJz','{}','1',NULL,'房东App集中式房态图-管理公寓');
  
# 金融管理页
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappFinanceIndex','APPJUMP','21','MODULE_PappFinanceIndex','{}','1',NULL,'房东App金融管理页');
  
# 流水页-线上交易Tab
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappAcctOnlineList','APPJUMP','22','MODULE_PappAcctOnlineList','{}','1',NULL,'房东App流水页-线上交易Tab');
  
# 蘑菇宝列表-买回Tab（筛选项“状态”选择待买回；若房东有两个资方，则列表筛选“蘑菇宝渠道”选择聚有财；）
# 蘑菇宝列表-买回Tab（筛选项“状态”选择待买回；若房东有两个资方，则列表筛选“蘑菇宝渠道”选择拉卡拉；）
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappMogoBaoBuyBackList','APPJUMP','23','MODULE_PappMogoBaoBuyBackList','{}','1',NULL,'房东App蘑菇宝列表-买回Tab');
  
# 蘑菇宝列表-全部Tab（若房东有两个资方，则列表筛选“蘑菇宝渠道”选择聚有财）
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappMogoBaoIndexList','APPJUMP','24','MODULE_PappMogoBaoIndexList','{}','1',NULL,'房东App蘑菇宝列表-全部Tab');

# 蘑菇宝列表-审核通过Tab（若房东有两个资方，则列表筛选“蘑菇宝渠道”选择聚有财；）
# 蘑菇宝列表-审核通过Tab（筛选项“租客还款逾期”选择已逾期；若房东有两个资方，则列表筛选“蘑菇宝渠道”选择聚有财；）
# 蘑菇宝列表-审核通过Tab（筛选项“租客还款逾期”选择已逾期；若房东有两个资方，则列表筛选“蘑菇宝渠道”选择拉卡拉）
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappMogoBaoAuditPassList','APPJUMP','25','MODULE_PappMogoBaoAuditPassList','{}','1',NULL,'房东App蘑菇宝列表-审核通过Tab');

# 蘑菇宝详情-买回Tab
# 蘑菇宝详情页-买回Tab
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappMogoBaoBuyBackDetail','APPJUMP','26','MODULE_PappMogoBaoBuyBackDetail','{}','1',NULL,'房东App蘑菇宝详情-买回Tab');

# 实收详情页
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappPaidDetail','APPJUMP','27','MODULE_PappPaidDetail','{}','1',NULL,'房东App实收详情页');

# 我的-消息中心-金融通知
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappMesgFinanceList','APPJUMP','28','MODULE_PappMesgFinanceList','{}','1',NULL,'房东App消息中心-金融通知');
  
# 消息中心-房源通知
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappMesgHousingList','APPJUMP','29','MODULE_PappMesgHousingList','{}','1',NULL,'房东App消息中心-房源通知');

# 应收实收列表（租期中）-待收款Tab
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappBillUnpayList','APPJUMP','30','MODULE_PappBillUnpayList','{}','1',NULL,'房东App应收实收列表（租期中）-待收款Tab');

# 应收实收列表（租期中）-已收款Tab
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappBillPaidList','APPJUMP','31','MODULE_PappBillPaidList','{}','1',NULL,'房东App应收实收列表（租期中）-已收款Tab');

# 账务列表-欠款Tab
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappBillOweList','APPJUMP','32','MODULE_PappBillOweList','{}','1',NULL,'房东App账务列表-欠款Tab');

# 租约列表-快到期Tab
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappSignedOrderToExpireList','APPJUMP','33','MODULE_PappSignedOrderToExpireList','{}','1',NULL,'房东App租约列表-快到期Tab');
  
# 租约详情页
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappSignedOrderDetail','APPJUMP','34','MODULE_PappSignedOrderDetail','{}','1',NULL,'房东App租约详情页');
