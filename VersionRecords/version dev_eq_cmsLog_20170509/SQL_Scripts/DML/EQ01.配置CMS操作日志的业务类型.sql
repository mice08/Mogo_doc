/* Database name `mogoroomdb`，配置CMS操作的业务类型*/

use mogoroomdb;

INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`, `parentId`, `level`, `isLeaf`) VALUES ('3401', 'CMS日志管理', '1', '1', NULL, '1', '0');
INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`, `parentId`, `level`, `isLeaf`) VALUES ('340101', '新增操作', '1', '1', '3401', '2', '1');
INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`, `parentId`, `level`, `isLeaf`) VALUES ('340102', '更新操作', '1', '2', '3401', '2', '1');
INSERT INTO `comm_busitype` (`busiType`, `busiName`, `status`, `sort`, `parentId`, `level`, `isLeaf`) VALUES ('340103', '删除操作', '1', '3', '3401', '2', '1');