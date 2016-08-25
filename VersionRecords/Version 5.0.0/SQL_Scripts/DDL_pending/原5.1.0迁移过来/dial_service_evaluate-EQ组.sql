/* Database name `mogoroomdb`， 服务评价表 */
 
use mogoroomdb;
  
CREATE TABLE supp_service_evaluate 
(
  id int(11) auto_increment NOT NULL COMMENT 'ID',
  roomId int(11) NOT NULL COMMENT '房间ID',
  landlordId int(11) NOT NULL COMMENT '房东ID',
  cellphone varchar(11) DEFAULT NULL COMMENT '用户手机号',
  createBy             int(11) null comment '创建人',
  createTime          datetime not null DEFAULT CURRENT_TIMESTAMP comment '创建时间',
  createByType         int(1) null comment '创建人类型(参考字典表groupName=userType)',
  score tinyint(1) NULL COMMENT '评分(1,2,3,4,5)',
  scoreDtl tinyint(1) COMMENT '评分原因(1:房源已出租 2:信息不正确 3:电话没打通 4:态度不友好)',
  remark varchar(255) COMMENT '备注',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='服务评价表';



alter table supp_service_evaluate add column device_uuid varchar(50) COMMENT '终端设备唯一标识';


alter table supp_service_evaluate add column status TINYINT(1) NOT NULL  COMMENT '状态(1:有效 0:无效)';

alter table supp_service_evaluate add column updateTime datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间';
