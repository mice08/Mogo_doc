USE mogoroomdb;

BEGIN;
-- 准备参数
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE fname = '职业房东';

-- 执行插入
INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES ( @fcode, '要回多退款', 'landlord/getbackmoney', @seq, @lvl, @pid, '1', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');

-- 确认插入结果
SELECT * FROM perm_functioninfo ORDER BY id  DESC LIMIT 10;

COMMIT;
