/*�޸���Դ��ع������б�����*/

use mogoroomdb;

/*�޸������ϼ�״̬*/
UPDATE 
  flat_room 
SET
  `onlineStatus` = 1,
  mogoOfflineEndTime = NULL,
  mogoOfflineMemo = NULL 
WHERE id IN 
  (SELECT 
    roomid 
  FROM
    risk_roomdetail 
  WHERE riskCode != 'ALL-CZZT-03' 
    AND userMemo = '���������ѳ���40�� ���ʵ��̬�����գ����������ϼܺ󣬿����ٴ�չʾ��');
    
 
/*�޸���Դ��ع���������*/
UPDATE 
  risk_roomdetail 
SET
  STATUS = 0,
  handleTime = NULL,
  employeeId = NULL,
  punishDegree = NULL,
  userMemo = NULL,
  remark = NULL 
WHERE id IN 
  (SELECT 
    * 
  FROM
    (SELECT 
      id 
    FROM
      risk_roomdetail 
    WHERE riskCode != 'ALL-CZZT-03' 
      AND userMemo = '���������ѳ���40�� ���ʵ��̬�����գ����������ϼܺ󣬿����ٴ�չʾ��') temp) ;

