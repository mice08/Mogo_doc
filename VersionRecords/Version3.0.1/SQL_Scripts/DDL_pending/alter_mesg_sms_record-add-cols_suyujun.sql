/*新增字段，保存第三方接口返回的相关信息*/
use mogoroomdb;

ALTER TABLE mesg_sms_record ADD COLUMN outerMesgId VARCHAR(32) COMMENT '短信编号',
ADD COLUMN outerStatus INT(1) COMMENT '短信发送结果',
ADD COLUMN outerDesc VARCHAR(32) COMMENT '短信发送结果描述',
ADD COLUMN outerWgcode VARCHAR(20) COMMENT '运营商网关返回的原始值',
ADD COLUMN outerTime datetime COMMENT '状态报告接收时间';