use mogoroomdb;
alter table `flat_room` add column `roomScore` double DEFAULT '0'  NOT NULL COMMENT '房源评分' after `manageFee`;