use mogoroomdb;

create table mesg_pub_task
(
   id                   int(11) not null AUTO_INCREMENT comment 'ID',
   isExpected           tinyint(1) comment '是否指定时间',
   expectedStartDate    date comment '期望开始日期',
   expectedStartTime    time comment '期望开始时间',
   expectedEndDate      date comment '期望截至日期',
   expectedEndTime      time comment '期望截至时间',
   isPush               tinyint(1) comment '是否推送消息(1:是 0:否)',
   mesgTitle            varchar(200) comment '消息标题',
   mesgContent          varchar(1000) comment '消息内容',
   mesgParam            varchar(1000) comment '消息参数',
   pushTitle            varchar(200) comment '推送标题',
   pushContent          varchar(1000) comment '推送内容',
   appPicId             int(11) comment 'App图片ID',
   jumpCode             varchar(20) comment '跳转编码',
   jumpValue            varchar(20) comment '跳转值',
   receiverType         varchar(3) comment '推送人群 (10:全部租客 1:已注册租客 0:未注册租客 3:自定义)', 
   pushChannel          varchar(4) comment '推送渠道 (见系统现有渠道)',
   receiverId           int(11) comment '自定义消息接收者Id',
   
   sendCount            int(10) comment 'Push推送数量',
   arriveCount          int(10) comment 'Push到达数量',
   sendTime             datetime comment '实际发送时间',  
   msgId                varchar(32) comment 'jpush消息Id',

   auditBy              int(11) comment '审核人',
   auditStatus          tinyint(4) comment '审核状态 (0:待审核 1:审核通过 2:审核拒绝)', 
   sendStatus           tinyint(4) comment '运行状态 (0:待发送 1:发送成功 2:发送失败 3:发送取消 4:发送超时)',
   createTime           datetime comment '创建时间',
   createBy             int(11) comment '创建人',
   createByType         int(11) comment '创建人类型', 
   updateTime           datetime comment '更新时间',
   updateBy             int(11) comment '更新人',
   updateByType         int(11) comment '更新人类型',
   status               tinyint(4) comment '业务状态 (1:有效 0:无效)',
   valid                tinyint(4) comment '状态 (1:有效 0:无效)',
   soDoneCode           int(32) comment '操作流水号',
   remark               varchar(255) comment '备注',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '消息发布任务表';

create table mesg_pub_receiver
(
   id                   int(11) not null AUTO_INCREMENT comment 'ID',
   taskId           	int(11) comment '任务Id',
   mobile               varchar(11) comment '手机号',
   regId                varchar(50) comment '设备号',
   createTime           datetime comment '创建时间',
   createBy             int(11) comment '创建人',
   createByType         int(11) comment '创建人类型',
   updateTime           datetime comment '更新时间',
   updateBy             int(11) comment '更新人',
   updateByType         int(11) comment '更新人类型',
   status               tinyint(4) comment '业务状态 (1:有效 0:无效)',
   valid                tinyint(4) comment '状态 (1:有效 0:无效)',
   soDoneCode           int(32) comment '操作流水号',
   remark               varchar(255) comment '备注',
   primary key (id),
   KEY `Index_taskId` (`taskId`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '自定义消息接收表';

CREATE TABLE mesg_pub_statistic
(
   id                   INT(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
   taskId               INT(11) COMMENT '任务Id', 
   appCount             INT(10) COMMENT 'App阅读数',
   pcCount              INT(10) COMMENT 'Pc阅读数',
   wapCount             INT(10) COMMENT 'Wap阅读数',
   oneDayCount          INT(10) COMMENT '24小时内响应次数',
   createTime           DATETIME COMMENT '创建时间',
   createBy             INT(11) COMMENT '创建人',
   createByType         INT(11) COMMENT '创建人类型',
   updateTime           DATETIME COMMENT '更新时间',
   updateBy             INT(11) COMMENT '更新人',
   updateByType         INT(11) COMMENT '更新人类型',
   STATUS               TINYINT(4) COMMENT '业务状态 (1:有效 0:无效)',
   valid                TINYINT(4) COMMENT '状态 (1:有效 0:无效)',
   soDoneCode           INT(32) COMMENT '操作流水号',
   remark               VARCHAR(255) COMMENT '备注',
   PRIMARY KEY (id),
   KEY `Index_taskId` (`taskId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '运营消息统计表';

create table mesg_pub_click
(
   id                   int(11) not null AUTO_INCREMENT comment 'ID',
   taskId               int(11) comment '任务Id',
   recordId             varchar(64) comment '推送消息记录ID',
   channel              tinyint(4) comment '渠道',
   userType             tinyint(4) comment '用户类型',
   userId               int(11) comment '用户Id',
   mobile               varchar(11) comment '手机号',
   regId                varchar(50) comment '设备号',
   clickTime            dateTime comment '点击时间', 
   clickIp              varchar(64) comment '点击IP',
   clickCity            varchar(64) comment '点击城市名',
   createTime           datetime comment '创建时间',
   createBy             int(11) comment '创建人',
   createByType         int(11) comment '创建人类型',
   updateTime           datetime comment '更新时间',
   updateBy             int(11) comment '更新人',
   updateByType         int(11) comment '更新人类型',
   status               tinyint(4) comment '业务状态 (1:有效 0:无效)',
   valid                tinyint(4) comment '状态 (1:有效 0:无效)',
   soDoneCode           int(32) comment '操作流水号',
   remark               varchar(255) comment '备注',
   primary key (id),
   KEY `Index_taskId` (`taskId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '消息点击统计';

create table mesg_news_record_marker(
   id                   int(11) not null AUTO_INCREMENT comment 'ID',
   userId               int(11) comment '用户Id',
   userType             int(11) comment '用户类型',
   taskId               int(11) comment '任务Id',
   createTime           datetime comment '创建时间',
   createBy             int(11) comment '创建人',
   createByType         int(11) comment '创建人类型',
   updateTime           datetime comment '更新时间',
   updateBy             int(11) comment '更新人',
   updateByType         int(11) comment '更新人类型',
   status               tinyint(4) comment '业务状态 (1:有效 0:无效)',
   valid                tinyint(4) comment '状态 (1:有效 0:无效)',
   soDoneCode           int(32) comment '操作流水号',
   remark               varchar(255) comment '备注',
   primary key (id),
   KEY `Index_userId` (`userId`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '运营消息已读记录标记表';

ALTER TABLE mesg_subtemplet
ADD COLUMN `appPicId` int(11) NULL AFTER `urlType`;

ALTER TABLE mesg_record
ADD COLUMN `pubMessageId` VARCHAR(256) NULL AFTER `templetId`;
