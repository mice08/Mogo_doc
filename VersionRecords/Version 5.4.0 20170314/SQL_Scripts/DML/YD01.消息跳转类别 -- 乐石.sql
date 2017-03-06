/* 增加跳转类别 */

use mogoroomdb;

# 租约审核信息页(非蘑菇宝)
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappSignedOrderAuditDetail','APPJUMP','37','MODULE_PappSignedOrderAuditDetail','{}','1',NULL,'房东App租约审核信息页(非蘑菇宝)');

# 预约详情页
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) 
  VALUES('MODULE_PappReservationOrderDetail','APPJUMP','38','MODULE_PappReservationOrderDetail','{}','1',NULL,'房东App预约详情页');
