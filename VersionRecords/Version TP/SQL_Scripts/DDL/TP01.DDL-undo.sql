USE mogoroomdb;
ALTER TABLE `find_room_attachment` DROP COLUMN `tpMonthlyPay`;
ALTER TABLE `cntr_saleContract` DROP COLUMN `foregiftIncomeType`;

ALTER TABLE `user_third_account` DROP COLUMN `uuId`;

ALTER TABLE `user_third_account`
MODIFY COLUMN `openSource`  int(11) NOT NULL COMMENT '第三方来源(1:支付宝，2:微信)' AFTER `openId`,
MODIFY COLUMN `openId`  varchar(32) COMMENT '第三方授权Id' AFTER `id`;


ALTER TABLE `supp_complain` DROP COLUMN `fcode`;
ALTER TABLE `supp_complain` DROP COLUMN `channel`;
ALTER TABLE `supp_complain` DROP COLUMN `complainType`;


ALTER TABLE `supp_repair` DROP COLUMN `refuseDesc`;
ALTER TABLE `supp_repair` DROP COLUMN `refuseTime`;
ALTER TABLE `supp_repair` DROP COLUMN `refuseBy`;
ALTER TABLE `supp_repair` DROP COLUMN `refuseByType`;
ALTER TABLE `supp_repair` DROP COLUMN `pretreatmentTime`;
ALTER TABLE `supp_repair_his` DROP COLUMN `refuseDesc`;
ALTER TABLE `supp_repair_his` DROP COLUMN `refuseTime`;
ALTER TABLE `supp_repair_his` DROP COLUMN `refuseBy`;
ALTER TABLE `supp_repair_his` DROP COLUMN `refuseByType`;
ALTER TABLE `supp_repair_his` DROP COLUMN `pretreatmentTime`;


ALTER TABLE `comm_suggestion` DROP COLUMN `suggestionType`;