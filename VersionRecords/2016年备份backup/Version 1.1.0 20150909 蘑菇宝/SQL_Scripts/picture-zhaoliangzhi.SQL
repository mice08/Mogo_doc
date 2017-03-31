ALTER TABLE flat_room_picture ADD `picOrigin` int(1) DEFAULT '1' COMMENT '图片来源：(参照来源枚举)';
ALTER TABLE flat_room_picture ADD `verifyTime` datetime DEFAULT NULL COMMENT '审核时间';
ALTER TABLE flat_room_picture ADD `verifyId` int(11) DEFAULT NULL COMMENT '审核人ID';
ALTER TABLE flat_room_picture ADD `verifyIdea` varchar(255) DEFAULT NULL COMMENT '审核意见';
ALTER TABLE flat_room_picture ADD `innerImageType` int(11) DEFAULT '1' COMMENT '公寓内的图片类型（1：卧室，2：独卫，3：公共区域，4：公共阳台）';
ALTER TABLE flat_room_picture ADD `sequences` int(11) DEFAULT '1' COMMENT '序列';
ALTER TABLE flat_room_picture ADD `description` varchar(255) DEFAULT NULL COMMENT '图片描述';
