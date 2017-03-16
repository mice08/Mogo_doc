/* 历史消息置为已读 */

use mogoroomdb;

# 历史消息置为已读
update
  mesg_news_record
set
  isRead = 1
where isRead = 0