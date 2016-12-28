/*消息相关初始化*/

use mogoroomdb;

UPDATE user_terminal_loginlog
SET channel = 18

WHERE user_id IN (
  SELECT id FROM user_landlord WHERE landlordType = 1
)
AND user_type = 0 ;


update mesg_record
set ext = 4
where receiveByType = 0;