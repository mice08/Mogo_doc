/*  Database name `mogoroomdb` ，微信公众号接受、发送信息表*/
use mogoroomdb;
 
/* 微信公众号接收普通用户信息 */
CREATE TABLE mesg_weixin_received
(
   `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
   `toUser` VARCHAR(50) NOT NULL COMMENT '公众微信号',
   `fromUser` VARCHAR(50) NOT NULL COMMENT '发送方帐号(一个OpenID)',
   `weixinCreateTime` INT(11) NOT NULL COMMENT '消息创建时间(整型)',
   `msgId` VARCHAR(50) NOT NULL COMMENT '消息id(64位整型)',
   `msgType` TINYINT(2) NOT NULL COMMENT '微信消息类型(1:文本 2:图片 3:语音 4:视频 5:短视频 6:音乐 7:图文 8:卡劵 9:地理位置 10:链接)',
   `content` VARCHAR(1500) NULL COMMENT '文本消息内容',
   `picUrl` VARCHAR(255) NULL COMMENT '图片链接',
   `mediaId` VARCHAR(255) NULL COMMENT '图片/语音/视频消息媒体id,可以调用多媒体文 件下载接口拉取数据',
   `encoder` VARCHAR(25) NULL COMMENT '语音格式(如:amr,speex)',
   `thumbMediaId` VARCHAR(255) NULL COMMENT '视频消息缩略图的媒体id,可以调用多媒体文件下载接口拉取数据',
   `locationX` DOUBLE(12,8) NULL COMMENT '地理位置经度',
   `locationY` DOUBLE(12,8) NULL COMMENT '地理位置纬度',
   `locScale` INT(11) NULL COMMENT '地图缩放大小',
   `locLabel` VARCHAR(255) NULL COMMENT '地理位置信息',
   `title` VARCHAR(255) NULL COMMENT '消息标题',
   `description` VARCHAR(255) NULL COMMENT '图文消息/视频消息/音乐消息的描述',
   `url` VARCHAR(255) NULL COMMENT '消息链接',
   `createTime` DATETIME NOT NULL COMMENT '创建时间',
   PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='微信公众号接收普通用户信息';
 
 
/* 微信公众号发送信息给普通用户 */
CREATE TABLE mesg_weixin_sent
(
   `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
   `toUser` VARCHAR(50) NOT NULL COMMENT '普通用户openid',
   `msgType` TINYINT(2) NOT NULL COMMENT '微信消息类型(1:文本 2:图片 3:语音 4:视频 5:短视频 6:音乐 7:图文 8:卡劵 9:地理位置 10:链接)',
   `content` VARCHAR(1500) NULL COMMENT '文本消息内容',
   `mediaId` VARCHAR(255) NULL COMMENT '发送的图片/语音/视频的媒体ID',
   `thumbMediaId` VARCHAR(255) NULL COMMENT '缩略图的媒体ID',
   `title` VARCHAR(255) NULL COMMENT '图文消息/视频消息/音乐消息的标题',
   `description` VARCHAR(255) NULL COMMENT '图文消息/视频消息/音乐消息的描述',
   `musicUrl` VARCHAR(255) NULL COMMENT '音乐链接',
   `hqMusicUrl` VARCHAR(255) NULL COMMENT '高品质音乐链接，wifi环境优先使用该链 接播放音乐',
   `url` VARCHAR(255) NULL COMMENT '图文消息被点击后跳转的链接',
   `picUrl` VARCHAR(255) NULL COMMENT '图文消息的图片链接',
   `createTime` DATETIME NOT NULL COMMENT '创建时间',
   `cardId` VARCHAR(50) NULL COMMENT '卡券ID',
   `cardExt` VARCHAR(255) NULL COMMENT '卡券',
   `kfAccount` VARCHAR(50) NULL COMMENT '客服帐号',
   PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='微信公众号发送信息给普通用户';