/*贷款请求跟综器 包含请求url,参数，返回,耗时等*/
use mogoroomdb;
 
DROP TABLE IF EXISTS loan_request_tracker;
CREATE TABLE loan_request_tracker(
    id INT(11) AUTO_INCREMENT COMMENT '主键id 自增长',
    loanChannel int(11) NOT NULL COMMENT '资方名称(参考loan_channel的id)',
    outBusinessId VARCHAR(50) NULL COMMENT '第三方业务主键',
    url VARCHAR(100) NOT NULL COMMENT '第三方接口地址',
    requestContent VARCHAR(2048) NULL COMMENT '请求参数',
    responseContent VARCHAR(2048) NOT NULL COMMENT '请求返回(已经解密或处理后的或者接口调用失败信息)',
    result tinyint(2) NOT NULL COMMENT '返回结果(0:成功 1:失败)',
    createTime DATETIME NOT NULL COMMENT '创建时间',
    requestTime DATETIME NOT NULL COMMENT '请求时间',
    responseTime DATETIME NOT NULL COMMENT '响应时间',
    comments VARCHAR(255) COMMENT '备注',
    PRIMARY KEY (id)
  ) ENGINE = INNODB COMMENT='贷款请求跟综器';