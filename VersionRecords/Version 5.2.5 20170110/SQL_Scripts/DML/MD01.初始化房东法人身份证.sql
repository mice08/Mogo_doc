/*  Database name `mogoroomdb`  增加菜单&导出 */
use mogoroomdb;

BEGIN;
update user_landlord set legalIdentityId = identityId where card_type='credential-1';;
COMMIT;
