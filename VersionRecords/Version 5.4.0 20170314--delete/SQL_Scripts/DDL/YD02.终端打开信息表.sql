/*  Database name `mogoroomdb`  增加终端打开信息表*/
use mogoroomdb;

/*
1、预估表容量:租客和房东安装软件的终端数量级,预计达到500万
2、每次读取量:1条
3、主要查询
	SELECT
	  id, channel, terminalOs, terminalId, hashCode, firstTime, lastTime
	FROM
	  user_terminal_open
	WHERE terminalId = '123' and hashCode=1234567890 AND terminalOs = 'Android' AND channel = 18
	ORDER BY firstTime DESC
	LIMIT 1
该数据主要是按terminalId的hashCode进行索引，需要预先添加的索引字段hashCode
*/

CREATE TABLE user_terminal_open (
  id int (11) NOT NULL AUTO_INCREMENT COMMENT '终端打开信息id',
  channel int (2) NOT NULL COMMENT '终端软件渠道',
  terminalOs varchar (20) NOT NULL COMMENT '终端操作系统',
  terminalId varchar (50) NOT NULL COMMENT '终端设备Id',
  hashCode int (11) NOT NULL COMMENT '终端设备Id的hashCode',
  firstTime datetime NOT NULL COMMENT '首次访问时间',
  lastTime datetime NOT NULL COMMENT '最后访问时间',
  PRIMARY KEY (id),
  KEY hashCode (hashCode)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = '终端打开信息'