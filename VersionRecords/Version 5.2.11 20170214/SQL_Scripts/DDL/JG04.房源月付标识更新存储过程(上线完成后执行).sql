/*
  创建存储过程，检查并修复有月付资质的房东房源月付显示配置，执行完成后删除
*/

use mogoroomdb;

/*创建存储过程*/
DELIMITER $$
DROP PROCEDURE IF EXISTS monthPayProcedure $$
CREATE PROCEDURE monthPayProcedure ()
BEGIN
  DECLARE roomId INT DEFAULT 0 ;
  DECLARE landlordId INT (11) ;
  DECLARE no_more_room INT DEFAULT 0 ;
  declare isExistRecord int default 0 ;
  /*查询有月付资质的房东ID*/
  declare cursor_room CURSOR for
  SELECT
    fr.id roomId
  FROM
    flat_roomprice rp
    JOIN flat_roompricedtl rpd
      ON rpd.priceId = rp.id
    JOIN flat_roompricebiztype bt
      ON bt.bizType = rp.bizType
    JOIN comm_paytype pt
      ON pt.id = bt.payTypeId
    JOIN flat_room fr
      ON rp.`goodsId` = fr.`id`
    JOIN flat_flats ff
      ON ff.`id` = fr.`flatsId`
    JOIN loan_landlord_credit credit
      ON credit.`landlordId` = ff.`landlordId`
  WHERE bt.payStage = 3 -- 月租
    AND rp.startTime <= NOW()
    AND (
      rp.endTime > NOW()
      OR rp.endTime IS NULL
    )
    AND rpd.billDtlType = 10002 -- 房租
    AND rp.goodsIdType = 1
    AND pt.`name` LIKE '%付三%' -- 房间id类型
    AND credit.`prodTypeCode` = '1000002'
    AND credit.`canLoan` = 1 ;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET no_more_room = 1 ;
  OPEN cursor_room ;
  FETCH cursor_room INTO roomId ;
  REPEAT
    select
      count(1) into isExistRecord
    from
      `find_room_attachment` fra
    where fra.roomId = roomId ;
    if isExistRecord = 0
    then
    insert into find_room_attachment (
      roomId,
      publishTime,
      monthlyPay,
      valid,
      createBy,
      createByType,
      createTime,
      updateBy,
      updateByType,
      updateTime,
      tpMonthlyPay
    )
    values
      (
        roomId,
        now(),
        1,
        1,
        - 999,
        - 1,
        now(),
        - 999,
        - 9,
        now(),
        0
      ) ;
    else
    update
      find_room_attachment
    set
      monthlyPay = 1,
      publishTime = now(),
      valid = 1,
      updateTime = now()
    where roomId = roomId ;
    end if ;
    FETCH cursor_room INTO roomId ;
    UNTIL no_more_room = 1
  END repeat ;
  COMMIT ;
  CLOSE cursor_room ;
END $$

DELIMITER ;

/*调用存储过程*/

CALL monthPayProcedure();


/*删除存储过程*/
DROP PROCEDURE monthPayProcedure;

