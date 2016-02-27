use mogoroomdb;
alter table `oder_reservationorder` add column `reservationNum` varchar(30) NULL COMMENT '预约单号' after `landlordId`;