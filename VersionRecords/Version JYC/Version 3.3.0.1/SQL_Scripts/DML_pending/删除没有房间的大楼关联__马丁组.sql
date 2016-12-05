UPDATE `flat_community_property` fcp ,
(
SELECT fcp.`id`,COUNT(ff.`id`)
FROM `flat_community_property` fcp
LEFT JOIN `flat_flats` ff ON fcp.`communityId` = ff.`communityId` AND fcp.`landlordId` = ff.`landlordId` AND ff.`status`  = 1 AND ff.`flatsTag` = 2
WHERE fcp.`status` = 1
GROUP BY fcp.`id`
HAVING IFNULL(COUNT(ff.`id`),0) = 0
) fcpCount
SET fcp.`status` = 0 
WHERE fcp.`id` = fcpCount.id