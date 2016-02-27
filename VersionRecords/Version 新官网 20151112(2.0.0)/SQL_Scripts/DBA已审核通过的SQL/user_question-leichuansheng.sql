/* Database name `mogoroomdb`) ，创建用户问题表*/
use mogoroomdb;

CREATE TABLE `user_question` (
   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
   `content` varchar(500) NOT NULL COMMENT '问题内容',
   `createBy` int(11) DEFAULT NULL COMMENT '创建人',
   `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   `type` int(2) DEFAULT NULL COMMENT '问题类型，1-密保问题',
   `status` int(1) NOT NULL COMMENT '状态，1-有效，0-无效',
   `updateBy` int(11) DEFAULT NULL COMMENT '修改人',
   `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报修表';