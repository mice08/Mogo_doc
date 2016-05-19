/*拓展报表优化新增索引*/
use mogoroomdb;
				
alter table comm_business_record add index orderId(orderId);
alter table comm_business_record add index operationTime(operationTime);
alter table bill_salebill add index dueDate(dueDate);
alter table orga_org_position add index positionId(positionId);
alter table orga_org_position add index userId(userId);
alter table user_landlord add index salesmanId(salesmanId);