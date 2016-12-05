/*修改默认值，默认为0，而不显示空*/
ALTER TABLE `oder_businessOrder`   
  CHANGE `payTotalAccount` `payTotalAccount` DOUBLE DEFAULT 0   COMMENT '金钱总额',
  CHANGE `balanceAccount` `balanceAccount` DOUBLE DEFAULT 0   COMMENT '余额金额';

/*初始化数据*/
UPDATE oder_businessOrder SET payTotalAccount= 0 WHERE payTotalAccount IS NULL;
UPDATE oder_businessOrder SET balanceAccount= 0 WHERE balanceAccount IS NULL;