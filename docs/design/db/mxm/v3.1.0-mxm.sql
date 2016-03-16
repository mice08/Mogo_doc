-- MySQL Script generated by MySQL Workbench
-- 03/09/16 10:56:10
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mogo_dev
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mogo_dev
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mogo_dev` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mogo_dev` ;

-- -----------------------------------------------------
-- Table `flat_tag`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `flat_tag` ;

CREATE TABLE IF NOT EXISTS `flat_tag` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `category` TINYINT NOT NULL COMMENT '标签分类(参考字典表的TagCategory分组名)',
  `name` VARCHAR(45) NOT NULL COMMENT '标签名',
  `userId` INT NOT NULL COMMENT '创建者id',
  `userType` TINYINT NOT NULL COMMENT '创建者类型(参考字典表userType的组名)',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB
COMMENT = '标签管理表';


-- -----------------------------------------------------
-- Table `flat_flat_tag`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `flat_flat_tag` ;

CREATE TABLE IF NOT EXISTS `flat_flat_tag` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tagId` INT NOT NULL COMMENT '标签ID(参考flat_tag表)',
  `flatsId` INT NOT NULL COMMENT '公寓ID(参考flat_flats表)',
  `creatTime` DATETIME NOT NULL COMMENT '房源标签创建时间',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = '房源标签管理表';


-- -----------------------------------------------------
-- Table `user_user_memo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_user_memo` ;

CREATE TABLE IF NOT EXISTS `user_user_memo` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `planStartTime` DATETIME NOT NULL COMMENT '备忘事件计划开始时间',
  `planEndTime` DATETIME NULL COMMENT '备忘事件计划结束时间',
  `memo` VARCHAR(1024) NOT NULL COMMENT '备忘内容',
  `status` TINYINT NOT NULL COMMENT '备忘状态(1:初始 2:已读 3:处理中 4:已完成)',
  `userId` INT NOT NULL COMMENT '创建者id',
  `userType` TINYINT NOT NULL COMMENT '创建者类型(参考字典表userType的组名)',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = '用户备忘录';


-- -----------------------------------------------------
-- Table `flat_flattag_history`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `flat_flattag_history` ;

CREATE TABLE IF NOT EXISTS `flat_flattag_history` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '房源标签履历表主键ID',
  `flatTagId` INT NOT NULL COMMENT '房源标签ID(参考flat_flat_tag表)',
  `tagId` INT NOT NULL COMMENT '标签ID(参考flat_tag表)',
  `flatsId` INT NOT NULL COMMENT '公寓ID(参考flat_flats表)',
  `creatTime` DATETIME NOT NULL COMMENT '房源标签创建时间',
  `deleteTime` DATETIME NOT NULL COMMENT '房源标签删除时间',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = '房源标签履历表';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
