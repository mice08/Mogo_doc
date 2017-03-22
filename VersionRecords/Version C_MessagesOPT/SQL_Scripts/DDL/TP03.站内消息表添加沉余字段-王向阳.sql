/** 站内消息表添加沉余字段方便租客或是房东端查询展示,分类型展示站内消息列表数据
 *  用到的sql:select id,recordId,newsTitle,newsContent,willSendTime,sendStatus,isRead,jumpCode,jumpValue,businessType
 *            from  mesg_news_record where receiveBy = #{pa.receiveBy} and receiveByType = #{pa.receiveByType}
 *            and businessType = #{pa.businessType} and isRead = #{pa.isRead} ORDER BY `willSendTime` DESC       
 **/
use mogoroomdb;

ALTER TABLE mesg_news_record ADD COLUMN `receiveBy` int(11) not null COMMENT '接收消息的用户id';
ALTER TABLE mesg_news_record ADD COLUMN `receiveByType` int(2) not null COMMENT '接收消息的用户类型';
ALTER TABLE mesg_news_record ADD COLUMN `templetId` int(11) COMMENT '模板ID';
ALTER TABLE mesg_news_record ADD COLUMN `businessType` int(2) not null COMMENT '模板的业务类型';
ALTER TABLE mesg_news_record ADD COLUMN `pubMessageId` int(11) COMMENT '运营消息主键';

create index Index_msgReceiver on mesg_news_record(receiveBy,receiveByType);
create index Index_msgIsRead on mesg_news_record(businessType,isRead);