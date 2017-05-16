
/*bd跟进数据修复*/
use bizd;
BEGIN;

UPDATE bizd_landlord_record SET newStatus = 9 WHERE id IN (7544,5841,14708,4438,6381,2495,14456,11144,15816,26,10028,15572,2140);
UPDATE bizd_landlord_record SET newStatus = 10 WHERE id IN (2302);
UPDATE bizd_landlord_record SET newStatus = 3 WHERE id IN (15924);
UPDATE bizd_landlord_record SET newStatus = oldStatus WHERE id IN (7544,5841,14708,4438,6381,2495,14456,11144,15816,26,10028,15572,2302,2140,15924);
COMMIT;