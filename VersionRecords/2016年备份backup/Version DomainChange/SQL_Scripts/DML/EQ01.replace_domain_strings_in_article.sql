/* Database name `mogoroomdb`， 因官网域名变更，CMS文章内容中包含域名".mogoroom.com"的字符需要替换成".mgzf.com" */

use mogoroomdb;

update coms_context set context=(replace(context, '.mogoroom.com', '.mgzf.com')) where context like '%.mogoroom.com%';

update coms_context set coverimgurl=(replace(coverimgurl, '.mogoroom.com', '.mgzf.com')) where coverimgurl like '%.mogoroom.com%';

update coms_contexttitlerel set titlevalue=(replace(titlevalue, '.mogoroom.com', '.mgzf.com')) where titlevalue like '%.mogoroom.com%';