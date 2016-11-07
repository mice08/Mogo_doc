/*Database name `mogoroomdb`， 用户绑定卡历史记录，房东历史表增加索引 */
use mogoroomdb;

create index bankcardId on user_bankcard_his(bankcardId);
create index soDoneCode on user_bankcard_his(soDoneCode);

/*绑定表加索引*/
create index userid on user_bankcard(userid);

create index landlord on user_landlord_his(landlordId);
create index soDoneCode on user_landlord_his(soDoneCode);