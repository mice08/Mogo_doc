use mogoroomdb;
CREATE TABLE `mogo_dev`.`comm_picture_del_his`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `url` VARCHAR(1024) NOT NULL COMMENT '图片URL',
  PRIMARY KEY (`id`)
) ENGINE=INNODB CHARSET=utf8 COMMENT='图片删除记录表';