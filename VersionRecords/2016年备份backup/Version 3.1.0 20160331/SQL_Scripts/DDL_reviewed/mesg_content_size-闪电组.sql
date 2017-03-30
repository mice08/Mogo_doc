/*修改字段长度到3000*/
use mogoroomdb;

ALTER TABLE mesg_email_tosend 
MODIFY COLUMN emailContent VARCHAR(3000) not null comment '邮件内容';

ALTER TABLE mesg_email_record 
MODIFY COLUMN emailContent VARCHAR(3000) not null comment '邮件内容';


ALTER TABLE mesg_email_tocheck 
MODIFY COLUMN emailContent VARCHAR(3000) not null comment '邮件内容';

ALTER TABLE mesg_subtemplet 
MODIFY COLUMN templetContent VARCHAR(3000) not null comment '模板内容';






