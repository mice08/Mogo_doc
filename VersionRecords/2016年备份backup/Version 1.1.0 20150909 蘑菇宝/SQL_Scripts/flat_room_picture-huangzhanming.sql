ALTER TABLE flat_room_picture ADD `appShow` int(11) NOT NULL DEFAULT '1' COMMENT '是否在App显示';

ALTER TABLE flat_room_picture ADD `verifyStatus` int(1) NOT NULL DEFAULT '1' COMMENT '审核状态1：待审核 2：审核通过 3：审核未通过';