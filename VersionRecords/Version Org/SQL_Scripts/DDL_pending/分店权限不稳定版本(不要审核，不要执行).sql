use mogoroomdb;

ALTER TABLE  `perm_menu_group`   
  ADD COLUMN `parentId` INT(11) NULL  COMMENT '���ڵ�id' AFTER `updateTime`,
  ADD COLUMN `code` VARCHAR(7) NULL  COMMENT '����' AFTER `parentId`,
  ADD COLUMN `channel` INT(2) NOT NULL  COMMENT '����' AFTER `code`;
  