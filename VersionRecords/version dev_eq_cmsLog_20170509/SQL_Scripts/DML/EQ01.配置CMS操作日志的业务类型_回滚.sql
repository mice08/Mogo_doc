/* Database name `mogoroomdb`，回滚配置CMS操作的业务类型*/

use mogoroomdb;

DELETE from comm_busitype where busiType in (3401,340101,340102,340103);