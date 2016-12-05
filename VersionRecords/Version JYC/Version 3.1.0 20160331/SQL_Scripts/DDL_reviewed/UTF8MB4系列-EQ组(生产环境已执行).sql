/* Database name `mogoroomdb` , (生产环境已执行) 某些可以输入表情字符的表修改其编码为UTF8MB4 */
use mogoroomdb;

ALTER TABLE `supp_complain` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `supp_repair` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `oder_reservationorder` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `oder_bookorder` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `mesg_record` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `mesg_weixin_record` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
ALTER TABLE `comm_suggestion` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
