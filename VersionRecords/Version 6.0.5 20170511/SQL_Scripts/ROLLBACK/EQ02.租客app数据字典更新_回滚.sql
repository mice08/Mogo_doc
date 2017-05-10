/* Database name `mogoroomdb`，租客app数据字典更新，回滚语句 */

use mogoroomdb;

UPDATE comm_dictionary SET VALUE = 1.22 WHERE groupName = 'appDDversion';
