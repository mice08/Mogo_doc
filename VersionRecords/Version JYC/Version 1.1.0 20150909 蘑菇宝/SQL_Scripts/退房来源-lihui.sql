ALTER TABLE oder_surrenderApply ADD surrOrigin INT(11) DEFAULT 1 COMMENT '退房来源:1-租客app;2-后台';
ALTER TABLE oder_surrenderApply ADD checkOutBy INT(11)  COMMENT '退房结账人';

INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES('channel-1','channel','1','1','租客APP','1',NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES('channel-2','channel','2','2','BS后台','1',NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES('channel-3','channel','3','3','官网','1',NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES('channel-4','channel','4','4','房东APP','1',NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES('channel-5','channel','5','5','房东PC','1',NULL);

