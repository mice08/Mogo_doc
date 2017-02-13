/*  Database name `mogoroomdb`  更新法人身份证 */
use mogoroomdb;

BEGIN;
update user_landlord set legalIdentityId = identityId where card_type='credential-1';
COMMIT;
