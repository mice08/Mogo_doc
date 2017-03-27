/*Database name `mogoroomdb` 修复，并发导致的用户重复创建绑定关系*/
use mogoroomdb;

update user_weixin_bind set status=0 WHERE id IN(81208,90075,94384,97483);
update user_renter set status=0 WHERE id IN(1312621,1323255,1328027,1331707);