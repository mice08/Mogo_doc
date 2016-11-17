use mogoroomdb;

/*删除角色与权限的对应关系*/
DELETE 
FROM
  perm_role_function 
WHERE function_id IN (
    2066,
    503,
    694,
    818,
    556,
    2633,
    2641,
    576,
    580,
    2643,
    569,
    2636,
    2637,
    2638,
    2639,
    690,
    729
  ) ;

  /*把菜单改为无效*/
  UPDATE perm_functioninfo SET STATUS=0
  WHERE id IN (2066,
    503,
    694,
    818,
    556,
    2633,
    2641,
    576,
    580,
    2643,
    569,
    2636,
    2637,
    2638,
    2639,
    690,
    729);