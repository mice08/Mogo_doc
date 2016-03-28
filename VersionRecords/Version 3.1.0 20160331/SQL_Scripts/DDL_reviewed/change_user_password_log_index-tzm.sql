/* Database name `mogoroomdb` , 修改用户密码历史表索引 */
use mogoroomdb;

DROP INDEX IDX_USERID_TYPE ON user_password_log;


CREATE  INDEX IDX_USERID_TYPE ON user_password_log(userId,passType); 