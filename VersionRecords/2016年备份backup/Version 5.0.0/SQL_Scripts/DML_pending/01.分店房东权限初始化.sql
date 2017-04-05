/**权限数据初始化**/
use mogoroomdb;

/**删除房东PC与房东APP配置的菜单**/
DELETE FROM perm_functioninfo WHERE channel IN (4,5);
/*清空数据*/
DELETE FROM `perm_menu_group`;
DELETE FROM `perm_menu_group_rel`;
DELETE FROM `perm_role` where id = 66;
DELETE FROM `perm_menugroup_role_rel`;

/**房东下的子账号都分配到直属组织**/
INSERT INTO orga_org_position (
  userId,
  orgId,
  positionId,
  label,
  `status`,
  createBy,
  createByType,
  createTime
) 
SELECT 
  rel.`userId`,
  -1,
  (SELECT 
    id 
  FROM
    `orga_position` t 
  WHERE t.`positionCode` = 'subShopEmp'),
  '分店员工',
  1,
  rel.`landlordId`,
  0,
  NOW() 
FROM
  user_landlord_childacc_rel rel 
  JOIN user_info ui 
    ON rel.`userId` = ui.`id` 
    AND ui.`status` = 1 
  JOIN user_landlord ul ON ul.id = rel.landlordId AND ul.status=1
WHERE rel.`status` = 1 
  AND NOT EXISTS 
  (SELECT 
    1 
  FROM
    orga_org_position oop 
    WHERE oop.`userId` = rel.`userId` 
    AND oop.`status`=1);