/*  Database name `mogoroomdb`  增加终端打开信息表*/
use mogoroomdb;

/*
1、预估表容量:租客和房东安装软件的终端数量级,预计达到500万
2、每次读取量:1条
3、主要查询
	SELECT
	  id, channel, terminalOs, terminalId, firstTime, lastTime
	FROM
	  user_terminal_open
	WHERE terminalId = '123' AND terminalOs = 'Android' AND channel = 18
	ORDER BY firstTime DESC
	LIMIT 1
该数据主要是按terminalId进行索引，需要预先添加的索引字段terminalId
*/

CREATE TABLE user_terminal_open (
  id INT (11) NOT NULL AUTO_INCREMENT COMMENT '终端打开信息id',
  channel INT (2) NOT NULL COMMENT '终端软件渠道',
  terminalOs VARCHAR (20) NOT NULL COMMENT '终端操作系统',
  terminalId VARCHAR (50) NOT NULL COMMENT '终端设备Id',
  firstTime DATETIME NOT NULL COMMENT '首次访问时间',
  lastTime DATETIME NOT NULL COMMENT '最后访问时间',
  PRIMARY KEY (id),
  KEY terminalId (terminalId)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '终端打开信息'