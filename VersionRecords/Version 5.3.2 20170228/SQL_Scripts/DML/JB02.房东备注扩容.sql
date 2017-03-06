/* landlordRemark 扩容 */

use mogoroomdb;


ALTER TABLE `oder_reservationorder` MODIFY `landlordRemark` VARCHAR(250) DEFAULT NULL COMMENT '房东备注内容';
