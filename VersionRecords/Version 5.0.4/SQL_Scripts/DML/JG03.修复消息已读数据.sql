/*修复消息已读数据不准确问题*/

use mogoroomdb;


DELIMITER $$
DROP PROCEDURE IF EXISTS repairMesgReadPro $$
CREATE PROCEDURE repairMesgReadPro () 
BEGIN
  DECLARE mesgTotalNum INT DEFAULT 0 ;
  DECLARE mesgUnreadNum INT DEFAULT 0 ;
  DECLARE isExistsMesgRead INT DEFAULT 0 ;
  DECLARE landlordId INT (11) ;
  DECLARE no_more_landlordId INT DEFAULT 0 ;
  DECLARE cur_landlord CURSOR FOR 
  SELECT 
    userId 
  FROM
    mesg_read t 
  WHERE userType = 0 ;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET no_more_landlordId = 1 ;
  OPEN cur_landlord ;
  FETCH cur_landlord INTO landlordId ;
  REPEAT
    SELECT 
      COUNT(*) INTO mesgTotalNum 
    FROM
      mesg_record messagePackage 
    WHERE messagePackage.id IN 
      (SELECT 
        pushMessage.recordId 
      FROM
        mesg_push_record pushMessage 
      WHERE pushMessage.valid = 1) 
      AND messagePackage.receiveBy = landlordId 
      AND messagePackage.receiveByType = 0 ;
    SELECT 
      COUNT(*) INTO mesgUnreadNum 
    FROM
      mesg_record messagePackage 
    WHERE messagePackage.id IN 
      (SELECT 
        pushMessage.recordId 
      FROM
        mesg_push_record pushMessage 
      WHERE pushMessage.valid = 1 
        AND pushMessage.isRead = 0) 
      AND messagePackage.receiveBy = landlordId 
      AND messagePackage.receiveByType = 0 ;
    UPDATE 
      mesg_read 
    SET
      totalCount = mesgTotalNum,
      readCount = mesgTotalNum - mesgUnreadNum,
      checkTime = NOW() 
    WHERE userId = landlordId 
      AND userType = 0 ;
    FETCH cur_landlord INTO landlordId ;
    UNTIL no_more_landlordId = 1 
  END REPEAT ;
  COMMIT ;
  CLOSE cur_landlord ;
END$$

DELIMITER ;