/* Database name `mogoroomdb`， 如果上线失败，数据回滚。CMS文章内容中已修改为".mgzf.com"的字符需要替换成原字符".mogoroom.com" */

use mogoroomdb;

update coms_context set context=(replace(context, '.mgzf.com', '.mogoroom.com')) where context like '%.mgzf.com%';

update coms_context set coverimgurl=(replace(coverimgurl, '.mgzf.com', '.mogoroom.com')) where coverimgurl like '%.mgzf.com%';

update coms_contexttitlerel set titlevalue=(replace(titlevalue, '.mgzf.com', '.mogoroom.com')) where titlevalue like '%.mgzf.com%';