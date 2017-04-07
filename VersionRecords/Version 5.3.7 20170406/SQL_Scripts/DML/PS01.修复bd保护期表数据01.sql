/*修复bd保护期数据共影响：2736行*/
use mogoroomdb;

UPDATE bizd.`bizd_landlord_protect` SET valid = 0  
WHERE id NOT IN (
SELECT bId FROM(
    SELECT
        MAX(B.id) bId
    FROM
        bizd.`bizd_landlord_protect` B
    WHERE B.valid = 1
    GROUP BY B.bdLandlordId HAVING COUNT(B.bdLandlordId)>1
)C
) AND
 bdLandlordId NOT IN (
SELECT bdLandlordId FROM(
    SELECT
       bdLandlordId
    FROM
        bizd.`bizd_landlord_protect` B
    WHERE B.valid = 1
    GROUP BY B.bdLandlordId HAVING COUNT(B.bdLandlordId) = 1
)D	
) AND valid = 1;


COMMIT;