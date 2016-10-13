/*房源录入相关*/
use mogoroomdb;
/*公寓蓝图*/
create table flat_mansion_draft
(
    id                   int(11) not null auto_increment comment '主键',
    mansionId            int(11) not null comment '大楼id',
    floorNum             int(11) not null comment '房间所在楼层',
    roomNum              varchar(32) not null comment '房间号',
    rentStatus           tinyint(4) DEFAULT 1 comment '出租状态 1：未出租 2：已出租',
    flatsTypeId          int(11) DEFAULT NULL comment '公寓房型ID',
    createTime           datetime DEFAULT NULL comment '创建时间',
    createBy			 int(11) DEFAULT NULL comment '创建人',
    createByType         int(1) DEFAULT NULL comment '创建人类型(参考字典表groupName=userType)',
    updateTime           datetime DEFAULT NULL comment '更新时间',
    updateBy			 int(11) DEFAULT NULL comment '更新人',
    updateByType         int(1) DEFAULT NULL comment '更新人类型(参考字典表groupName=userType)',
    soDoneCode           int(11) DEFAULT NULL COMMENT '对应common_business_record.id',
    remark               varchar(255) DEFAULT NULL COMMENT '描述',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '公寓蓝图';
/*房源录入临时上传照片记录*/
create table flat_upload_pictrue_draft
(
    id                   int(11) not null auto_increment comment '主键',
    landlordId           int(11) not null comment '房东id',
    communityId          int(11) not null comment '小区id',
    houseNumber          varchar(50) not null comment '门牌号',
    imagePath            varchar(255) not null comment '图片路径',
    isCover              tinyint(1) DEFAULT 0 comment '是否封面(0:否  1:是)',
    status               tinyint(1) DEFAULT 0 comment '标记(0:初始化状态  1:正常使用中  2:临时图片无效 )',
    valid				 tinyint(1) DEFAULT 1 comment '是否有效(0:否  1:是 )',
    createTime           datetime DEFAULT NULL comment '创建时间',
    createBy			 int(11) DEFAULT NULL comment '创建人',
    createByType         int(1) DEFAULT NULL comment '创建人类型(参考字典表groupName=userType)',
    soDoneCode           int(11) DEFAULT NULL COMMENT '对应common_business_record.id',
    remark               varchar(255) DEFAULT NULL COMMENT '描述',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '房源录入临时上传照片记录';
