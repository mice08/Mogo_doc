use mogoroomdb;

ALTER TABLE  `perm_menu_group`   
  ADD COLUMN `parentId` INT(11) NULL  COMMENT '¸¸½Úµãid' AFTER `updateTime`,
  ADD COLUMN `code` VARCHAR(7) NULL  COMMENT '±àÂë' AFTER `parentId`,
  ADD COLUMN `channel` INT(2) NOT NULL  COMMENT 'ÇþµÀ' AFTER `code`;
  