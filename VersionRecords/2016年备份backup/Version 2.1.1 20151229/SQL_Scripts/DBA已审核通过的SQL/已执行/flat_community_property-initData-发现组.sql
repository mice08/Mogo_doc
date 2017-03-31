/*  Database name `mogoroomdb` ��ͳһ��ʼ����¥�㡢������*/
use mogoroomdb;


-- Step1: ����ִ�� ͬһ����¥�����������¥�㡢���� ���ֵ��ֵ�ڴ�¥��
UPDATE flat_community_property fcp1
INNER JOIN (
	SELECT
		IFNULL(max(ff.floorCountNum),1) floorCount,
		IFNULL(max(ff.elevatorCount),1) elevatorCount,
		fc.id id
	FROM
		flat_flats ff
	LEFT JOIN flat_community fc ON fc.id = ff.communityId
	RIGHT JOIN flat_community_property fcp ON fcp.communityId = fc.id
	WHERE
		fcp.flatsTag = 2
	GROUP BY
		fc.id
) tmp ON tmp.id = fcp1.communityId
SET fcp1.floorCount = tmp.floorCount,fcp1.elevatorCount=tmp.elevatorCount;







-- Step 2: �ҵ���¥��������Դ����ͳһ��ʼ��ֵ
UPDATE flat_flats ff
INNER JOIN flat_community_property fcp ON ff.communityId = fcp.communityId
SET ff.floorCountNum = fcp.floorCount,
 ff.elevatorCount = fcp.elevatorCount
WHERE
	fcp.flatsTag = 2;




-- Step 3: �ҵ���¥���������ͣ���ͳһ��ʼ��ֵ
UPDATE flat_flats_prototype ffp
INNER JOIN flat_community_property fcp ON ffp.communityId = fcp.communityId
SET ffp.floorCountNum = fcp.floorCount,
 ffp.elevatorCount = fcp.elevatorCount
WHERE
	fcp.flatsTag = 2;