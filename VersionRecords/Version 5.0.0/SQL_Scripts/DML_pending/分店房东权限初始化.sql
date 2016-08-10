/**Ȩ�����ݳ�ʼ��**/
use mogoroomdb;

/**ɾ������PC�뷿��APP���õĲ˵�**/
DELETE FROM perm_functioninfo WHERE channel IN (4,5);

/**�����µ����˺Ŷ����䵽ֱ����֯**/
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
  '�ֵ�Ա��',
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