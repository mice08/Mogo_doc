
USE mogoroomdb;

/*   房源扩展信息表  记录和房源相关的统计数据 */
create table repo_roomExtInfo
(
   ID                  int(11) not null auto_increment comment '流水号',
   roomID              int(11) not null comment '房间ID',
   roomOffDate         datetime comment '房源下架开始日期',
   roomOffDays         int(11) comment '房源下架天数',
   roomOffReason       varchar(500) comment '房源下架原因',
   roomOffOper         int(11) comment '房源下架操作人',
   roomOffOperType        tinyint comment '房源下架操作人类型',
   valid               tinyint default 1 comment '数据有效性 1:有效',
   soDoneCode          int(11) comment '业务操作记录ID,主要用于记录定时器数据扫描标识',
   soDoneTime          datetime comment '日志记录时间',
   createTime          datetime default CURRENT_TIMESTAMP comment '创建时间,数据扫描时间',
   KEY `IDX_roomExtInfoOffdate` (`roomOffDate`),
   KEY `IDX_roomExtInfoRoomID` (`roomID`),
   primary key (ID)
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='房源扩展信息表';
