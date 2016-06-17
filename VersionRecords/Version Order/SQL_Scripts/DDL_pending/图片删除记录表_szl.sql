use mogoroomdb;
CREATE TABLE `comm_picture_del_his`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `url` VARCHAR(1024) NOT NULL COMMENT '图片URL',
  `deleteTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '删除时间',
  `operatorType` INT NOT NULL COMMENT '操作人员类型',
  `operator` INT NOT NULL COMMENT '操作人员',
  PRIMARY KEY (`id`)
) ENGINE=INNODB COMMENT='图片删除记录表';