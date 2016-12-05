ALTER TABLE `loan_landlord_buyback`
ADD COLUMN `mogobaoClosed`  int(11) NULL DEFAULT 0 COMMENT '蘑菇宝是否关闭，默认0未关闭，已关闭为1' AFTER `mogobaoBuyBackDate`;