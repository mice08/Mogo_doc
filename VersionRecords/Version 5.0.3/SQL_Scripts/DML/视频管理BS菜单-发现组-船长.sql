
/*视频管理初始化脚本  */
use mogoroomdb;

/* 初始化视频菜单根目录 */
INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, `channel`, `isMenu`) VALUES ('501000001', '根', NULL, '1', '0', NULL, NOW(), NULL, NOW(), '1', '1', '0', '5', '1');
