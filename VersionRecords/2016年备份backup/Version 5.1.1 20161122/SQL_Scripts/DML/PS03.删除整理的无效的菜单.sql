use mogoroomdb;

/*删除角色与权限的对应关系,受影响的行数应该为138*/
DELETE 
FROM
  perm_role_function 
WHERE function_id IN 
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE fname IN (
      '房东房源统计',
      '销售详情（新）',
      '房东APP登录统计',
      '销售转化报表',
      '销售每日统计',
      '职业房东租金宝报表',
      '没有图片的房间列表',
      '职业房东租约补录报表',
      '房源价格报表',
      '房东空房统计',
      '销售提成（新）',
      '退房统计',
      '（非蘑菇宝）交租',
      '租金宝日报',
      '报修投诉统计',
      '职业房东销售统计',
      '水电煤账单'
    ) 
  GROUP BY fname);
  

  /*把菜单改为无效，受影响行数应该为17*/
 UPDATE 
  perm_functioninfo 
SET
  STATUS = 0 
WHERE id IN 
  (SELECT 
    * 
  FROM
    (SELECT 
      id 
    FROM
      perm_functioninfo 
    WHERE fname IN (
        '房东房源统计',
        '销售详情（新）',
        '房东APP登录统计',
        '销售转化报表',
        '销售每日统计',
        '职业房东租金宝报表',
        '没有图片的房间列表',
        '职业房东租约补录报表',
        '房源价格报表',
        '房东空房统计',
        '销售提成（新）',
        '退房统计',
        '（非蘑菇宝）交租',
        '租金宝日报',
        '报修投诉统计',
        '职业房东销售统计',
        '水电煤账单'
      ) 
    GROUP BY fname) temp);