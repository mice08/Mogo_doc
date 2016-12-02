/*修改风险表字段类型*/

use mogoroomdb;

ALTER TABLE `risk_landlord_level`   
  CHANGE `phase` `phase` VARCHAR(25) NOT NULL  COMMENT '识别环节(1:资质审核 2:订单审核 3:租客回访 4:房东贷后回访 5:其它)';