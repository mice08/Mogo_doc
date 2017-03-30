/*新增字段，保存第三方接口返回的相关信息*/
use mogoroomdb;

ALTER TABLE mesg_sms_record ADD COLUMN rptMesgId VARCHAR(32) COMMENT '短信编号',
ADD COLUMN rptStatus INT(1) COMMENT '短信状态报告结果',
ADD COLUMN rptDesc VARCHAR(32) COMMENT '短信状态报告描述',
ADD COLUMN rptTime datetime COMMENT '运营商生成状态报告时间',
ADD COLUMN gatewayCode VARCHAR(20) COMMENT '运营商网关返回的原始值';