ALTER TABLE `user_bankCard` CHANGE `createTime` `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP NULL COMMENT '创建时间'; 
ALTER TABLE `user_bankCard` CHANGE `updateTime` `updateTime` TIMESTAMP DEFAULT CURRENT_TIMESTAMP  NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'; 