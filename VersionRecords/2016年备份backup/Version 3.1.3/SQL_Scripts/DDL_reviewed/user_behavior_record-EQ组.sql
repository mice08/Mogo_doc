/*新增用户行为记录表*/
use mogoroomdb;


DROP TABLE IF EXISTS user_behavior_record;

/*==============================================================*/
/* Table: user_behavior_record                           */
/*==============================================================*/
CREATE TABLE user_behavior_record
(
   `id`             INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
   `goodsId`        INT(11) NOT NULL COMMENT '商品ID(房间ID)',
   `goodsIdType`    INT(1) NOT NULL COMMENT '商品对象类型（1:房间）',
   `channel`        INT(2) NOT NULL COMMENT '频道来源(参考groupName=channel)',
   `userId`         INT(11) COMMENT '用户ID',
   `userType`       INT(2) COMMENT '用户类型',
   `behaviorType`   INT(1) NOT NULL COMMENT '行为分类(1:浏览记录 2:拨打电话记录)',
   `regId`          VARCHAR(32) COMMENT '极光推送ID(记录用户唯一ID)',
   `createBy`       INT(11) COMMENT '创建人',
   `createByType`   INT(2) COMMENT '创建人类型(参考groupName=userType)',
   `createTime`     datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   `updateBy`       INT(11) COMMENT  '修改人',
   `updateByType`   INT(2) COMMENT '修改人类型(参考groupName=userType)',
   `updateTime`     datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
   `status`         INT(1) NOT NULL COMMENT '状态(1:有效 0:无效)',
   `functionId`     INT(11) NOT NULL COMMENT 'perm_functioninfo表主键',
   `feedback`       INT(1) COMMENT '房源反馈(1:准备看房 2:考虑一下 3:房源有问题)',
   `isLast`         INT(1) NOT NULL DEFAULT 1 COMMENT '最新浏览标记(1:最新 0:不是最新)',
   `remark`         VARCHAR(200) COMMENT '备注',
   PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '用户行为记录表';