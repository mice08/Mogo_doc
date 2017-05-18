/*回滚脚本*/

use mogoroomdb;

/*回滚蘑菇分与倍数关系配置数据*/

DELETE FROM comm_sysconfig WHERE groupName = 'SCORE_TIMES';

DELETE FROM comm_sysconfig WHERE groupName = 'GT_SCORE';