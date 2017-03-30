use mogoroomdb;
/*消息类别*/
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (1, '投诉消息', '', 2000031, '2016-8-3 14:04:55', 5, '收到投诉即时提醒');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (2, '报修消息', '', 2000031, '2016-8-3 14:05:11', 5, '接到报修通知、解决报修通知');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (5, '审核公寓', '', 2000031, '2016-8-1 17:58:07', 5, '审核房源及照片');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (8, '联系电话修改消息', '', 2000031, '2016-8-3 16:15:29', 5, '联系电话修改消息');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (9, '房东支付密码', '', 2000031, '2016-8-3 16:15:56', 5, '支付密码修改、修改成功');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (11, '业主消息', '', 2000031, '2016-8-10 14:13:23', 5, '业主账单通知、欠款通知');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (14, '预定消息', '', 2000031, '2016-8-14 15:36:07', 5, '预定服务相关消息');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (15, '预约消息', '', 2000031, '2016-8-14 15:36:27', 5, '预约服务相关消息');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (16, '线上签约', '', 2000031, '2016-8-14 15:36:41', 5, '线上签约相关消息');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (17, '补录租约', '', 2000031, '2016-8-14 15:36:53', 5, '补录租约相关消息');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (18, '退房操作', '', 2000031, '2016-8-14 15:37:13', 5, '退房操作相关消息');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (19, '账单消息', '', 2000031, '2016-8-14 15:37:32', 5, '账单服务相关消息');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (20, '钱款消息', '', 2000031, '2016-8-14 15:37:52', 5, '钱款操作相关消息');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (29, '租金宝申请', '', 2000681, '2016-8-15 15:23:33', 5, '租金宝申请提交、审核通过');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (30, '蘑菇宝贷款', '', 2000681, '2016-8-15 15:23:55', 5, '蘑菇宝审批通过、不通过，终审通过、不通过等');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (31, '租客还款成功', '', 2000681, '2016-8-15 15:24:08', 5, '租客成功还款提醒房东');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (32, '租客逾期提醒', '', 2000681, '2016-8-15 15:24:22', 5, '租客还款逾期7天内的提醒房东、子账号');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (33, '租客逾期强清', '', 2000681, '2016-8-15 15:24:33', 5, '租客逾期强清提醒');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (34, '租金宝买回', '', 2000681, '2016-8-15 15:24:43', 5, '买回提醒短信');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (35, '蘑菇宝申请', '', 2000681, '2016-8-15 15:24:53', 5, '租客的蘑菇宝申请消息（通过、不通过、资料有误）');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (36, '还款提醒', '', 2000681, '2016-8-15 15:25:03', 5, '还款提醒租客');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (37, '逾期提醒', '', 2000681, '2016-8-15 15:25:13', 5, '逾期提醒租客');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (38, '还款成功', '', 2000681, '2016-8-15 15:25:23', 5, '租客还款成功短信');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (39, '蘑菇宝放款', '', 2000681, '2016-8-15 15:25:38', 5, '租客蘑菇宝审核通过，房东收到租金放款');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (40, '租客还款提醒', '', 2000681, '2016-8-15 15:25:47', 5, '租客最后还款日账单逾期提醒');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (41, '账号相关消息', '', 2000031, '2016-8-16 17:18:10', 5, '账号密码修改，电话修改等系统消息');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (42, '子账号相关消息', '', 2000031, '2016-8-16 17:21:49', 5, '子账号创建、修改、密码重置等消息');
INSERT INTO `mesg_category` (`id`, `categoryName`, `categoryCode`, `createBy`, `createTime`, `createByType`, `cateDesc`) VALUES (43, '警告类消息', '', 2000031, '2016-8-16 17:32:03', 5, '短信、邮件预警消息');


