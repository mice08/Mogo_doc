/* Database name `mogoroomdb`， 因coms_hottab有新加字段，线上数据需要初始化 v-brand */

use mogoroomdb;

update coms_hotTab set tabType=1 where tabType <> 2;