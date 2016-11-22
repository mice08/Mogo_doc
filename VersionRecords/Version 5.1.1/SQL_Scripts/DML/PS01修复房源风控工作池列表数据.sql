/*修复房源风控工作池列表数据*/

use mogoroomdb;

/*修复房间上架状态*/
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
    AND userMemo = '空置天数已超过40天 请核实房态，次日，经您操作上架后，可以再次展示。');
    
 
/*修复房源风控工作池数据*/
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
      AND userMemo = '空置天数已超过40天 请核实房态，次日，经您操作上架后，可以再次展示。') temp) ;

