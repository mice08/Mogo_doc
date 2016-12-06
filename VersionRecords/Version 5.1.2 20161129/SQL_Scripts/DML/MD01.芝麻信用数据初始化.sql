/* Database name `mogoroomdb` 更新数据库中芝麻授权取消的用户*/
use mogoroomdb;

UPDATE user_zhima_score SET valid = 0 WHERE errorCode = 'ZMCREDIT.authentication_fail';