delete from coms_menu where name in ('WAP广告位管理','首页图片','APP下载','精选专题');
delete from perm_functioninfo where fname = 'WAP广告位管理';
delete from perm_role_function where function_id in (select id from perm_functioninfo where fname = 'WAP广告位管理');

