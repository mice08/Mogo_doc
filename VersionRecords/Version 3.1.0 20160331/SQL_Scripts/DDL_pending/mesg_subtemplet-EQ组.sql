/* Database name `mogoroomdb` , 修改消息子模板的内容长度 */
use mogoroomdb;

ALTER TABLE mesg_subtemplet MODIFY COLUMN templetContent VARCHAR(3000) NOT NULL COMMENT '模板内容';