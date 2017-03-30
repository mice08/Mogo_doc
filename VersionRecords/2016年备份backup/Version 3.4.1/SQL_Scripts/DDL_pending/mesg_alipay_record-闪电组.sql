/* Database name `mogoroomdb`， 添加支付宝服务窗发送记录表 */
use mogoroomdb;

DROP TABLE IF EXISTS mesg_alipay_record;
CREATE TABLE mesg_alipay_record (
   id INT(11) NOT NULL AUTO_INCREMENT COMMENT '支付宝服务窗记录表id',
   openId  VARCHAR(100) NOT NULL COMMENT '接受者openid',
   params VARCHAR(1000) DEFAULT NULL COMMENT '推送参数',
   templateId VARCHAR(100) DEFAULT NULL COMMENT '模板ID',
   sendStatus  INT(1) DEFAULT NULL COMMENT '推送状态 0: 失败 1: 成功',
   sendResult VARCHAR(200) DEFAULT NULL COMMENT '发送结果',
   createTime  DATETIME NOT NULL COMMENT '消息创建时间',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='支付宝服务窗发送记录表';


ALTER TABLE user_weixin_info ADD COLUMN chatwinType tinyint(2) DEFAULT NULL  COMMENT '社交平台(1:微信公众号 2: 支付宝服务窗)';
