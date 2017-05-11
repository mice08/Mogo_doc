/**
    1、预估表容量:每月月底新增与有效房东等量的数据（8000左右），每月月初更新与房东等量的数据(8000左右)
    2、每次读取量:按landlordId，useDate字段单条读取
    3、主要查询
    SELECT
      id,
      landlordId,
      signedOrderNum,
      mogoScore,
      multiple,
      totalNum,
      restNum,
      valid,
      useDate,
      createTime,
      createBy,
      createByType,
      updateTime,
      updateBy,
      updateByType
    FROM user_landlord_smsconfig
    WHERE landlordId = 1 and valid = 1 AND useDate = '2017-05-01');
    需要预先添加的索引字段 landlordId 索引
 */


use mogoroomdb;

CREATE TABLE user_landlord_smsconfig(
  id INT(11) NOT NULL AUTO_INCREMENT COMMENT '房东短信数量表id',
  landlordId INT(11) NOT NULL COMMENT '房东id',
  signedOrderNum INT(11) NULL DEFAULT 0 COMMENT '当前已确认租约数量',
  mogoScore INT(11) DEFAULT 0 COMMENT '房东蘑菇分',
  multiple INT(2) DEFAULT 0 COMMENT '蘑菇分对应的倍数',
  totalNum INT(11) DEFAULT 0 COMMENT '当月赠送房东的短信总数量',
  restNum INT(11) DEFAULT 0 COMMENT '当月房东未使用短信剩余数量',
  valid INT(1) NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)',
  useDate DATE NOT NULL COMMENT '短信使用时间(月份)',
  createTime DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间',
  createBy INT(11) NULL COMMENT '创建人',
  createByType INT(2) NULL COMMENT '创建人类型(参考字典表组名:userType)',
  updateTime DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  updateBy INT(11) NULL COMMENT '修改人',
  updateByType INT(2) NULL COMMENT '修改人类型(参考字典表组名:userType)',
  PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT '房东短信批量发送数量配置表';


CREATE INDEX idx_landlordId ON user_landlord_smsconfig(landlordId);