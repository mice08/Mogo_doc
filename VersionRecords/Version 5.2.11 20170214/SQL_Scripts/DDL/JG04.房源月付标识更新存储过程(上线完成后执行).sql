/*
  创建存储过程，检查并修复有月付资质的房东房源月付显示配置，执行完成后删除
*/

USE mogoroomdb;

/*创建存储过程*/
DELIMITER $$
DROP PROCEDURE IF EXISTS monthPayProcedure $$
CREATE PROCEDURE monthPayProcedure ()
BEGIN
  DECLARE cursorRoomId INT DEFAULT 0 ;
  DECLARE landlordId INT (11) ;
  DECLARE no_more_room INT DEFAULT 0 ;
  DECLARE isExistRecord INT DEFAULT 0 ;
  /*查询有月付资质的房东ID*/
  DECLARE cursor_room CURSOR FOR
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
  FETCH cursor_room INTO cursorRoomId ;
  REPEAT
    SELECT
      COUNT(1) INTO isExistRecord
    FROM
      `find_room_attachment` fra
    WHERE fra.roomId = cursorRoomId ;
    IF isExistRecord = 0
    THEN
    INSERT INTO find_room_attachment (
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
    VALUES
      (
        cursorRoomId,
        NOW(),
        1,
        1,
        - 999,
        - 1,
        NOW(),
        - 999,
        - 9,
        NOW(),
        0
      ) ;
    ELSE
    UPDATE
      find_room_attachment
    SET
      monthlyPay = 1,
      publishTime = NOW(),
      valid = 1,
      updateTime = NOW()
    WHERE roomId = cursorRoomId ;
    END IF ;
    FETCH cursor_room INTO cursorRoomId ;
    UNTIL no_more_room = 1
  END REPEAT ;
  COMMIT ;
  CLOSE cursor_room ;
END $$

DELIMITER ;

/*开启事务*/
BEGIN ;

  /*调用存储过程*/
  CALL monthPayProcedure();

/*提交事务*/
COMMIT ;

/*删除存储过程*/
DROP PROCEDURE monthPayProcedure;

