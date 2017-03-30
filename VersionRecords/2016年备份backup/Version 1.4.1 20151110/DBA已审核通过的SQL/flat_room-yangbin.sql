ALTER TABLE `flat_room`
ADD COLUMN `agencyFee` decimal NULL COMMENT '中介费',
ADD COLUMN `manageFee` decimal NULL COMMENT '管理费';