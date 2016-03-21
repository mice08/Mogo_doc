/* Database name `mogoroomdb` , 修改蘑菇宝申请信息表，增加房东租客合照字段 */
use mogoroomdb;

ALTER TABLE `loan_renter_info`
ADD COLUMN `picGroupId`  int(11) NULL COMMENT '申请材料照片合集' AFTER `nowphoto`;

