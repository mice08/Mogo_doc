delete from coms_menu where name in ('WAP���λ����','��ҳͼƬ','APP����','��ѡר��');
delete from perm_functioninfo where fname = 'WAP���λ����';
delete from perm_role_function where function_id in (select id from perm_functioninfo where fname = 'WAP���λ����');

