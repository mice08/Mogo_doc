/* Database name `mogoroomdb`, 替换消息模版 */

use mogoroomdb;

UPDATE mesg_subtemplet SET templetContent = REPLACE(templetContent,'400-800-4949','400-900-6868') WHERE templetContent LIKE '%400-800-4949%';
UPDATE mesg_subtemplet SET templetContent = REPLACE(templetContent,'4008004949','4009006868') WHERE templetContent LIKE '%4008004949%';
