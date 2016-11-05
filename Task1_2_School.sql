-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema school
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema school
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `school` DEFAULT CHARACTER SET utf8 ;
USE `school` ;

-- -----------------------------------------------------
-- Table `school`.`addresses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `school`.`addresses` (
  `addresses_id` INT(11) NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(45) NULL DEFAULT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `street` VARCHAR(45) NULL DEFAULT NULL,
  `number` VARCHAR(45) NULL DEFAULT NULL,
  `floor` SMALLINT(3) NOT NULL,
  `apartmentNo` INT(11) NOT NULL,
  PRIMARY KEY (`addresses_id`),
  UNIQUE INDEX `addresses_id_UNIQUE` (`addresses_id` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `school`.`disciplines`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `school`.`disciplines` (
  `disciplines_id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`disciplines_id`),
  UNIQUE INDEX `disciplines_id_UNIQUE` (`disciplines_id` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `school`.`students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `school`.`students` (
  `students_id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `enrollmentDate` DATE NOT NULL,
  `addresses_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE INDEX `students_id_UNIQUE` (`students_id` ASC),
  INDEX `FK_students_addresses_idx` (`addresses_id` ASC),
  CONSTRAINT `FK_students_addresses`
    FOREIGN KEY (`addresses_id`)
    REFERENCES `school`.`addresses` (`addresses_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `school`.`disciplines_studied`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `school`.`disciplines_studied` (
  `disciplines_id` INT(11) NOT NULL,
  `student_id` INT(11) NOT NULL,
  PRIMARY KEY (`disciplines_id`, `student_id`),
  INDEX `FK_disciplines_studied_students_idx` (`student_id` ASC),
  CONSTRAINT `FK_disciplines_studied_disciplines`
    FOREIGN KEY (`disciplines_id`)
    REFERENCES `school`.`disciplines` (`disciplines_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_disciplines_studied_students`
    FOREIGN KEY (`student_id`)
    REFERENCES `school`.`students` (`students_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `school`.`teachers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `school`.`teachers` (
  `teachers_id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `salary` DECIMAL(10,2) NULL DEFAULT NULL,
  `addresses_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`teachers_id`),
  UNIQUE INDEX `id_UNIQUE` (`teachers_id` ASC),
  INDEX `FK_teacher_addresses_idx` (`name` ASC),
  INDEX `FK_teachers_adresses_idx` (`addresses_id` ASC),
  CONSTRAINT `FK_teachers_addresses`
    FOREIGN KEY (`addresses_id`)
    REFERENCES `school`.`addresses` (`addresses_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `school`.`disciplines_taught`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `school`.`disciplines_taught` (
  `disciplines_id` INT(11) NOT NULL,
  `teacher_id` INT(11) NOT NULL,
  PRIMARY KEY (`disciplines_id`, `teacher_id`),
  INDEX `FK_disciplines_taught_teachesr_idx` (`teacher_id` ASC),
  CONSTRAINT `FK_disciplines_taught_disciplines`
    FOREIGN KEY (`disciplines_id`)
    REFERENCES `school`.`disciplines` (`disciplines_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_disciplines_taught_teachesr`
    FOREIGN KEY (`teacher_id`)
    REFERENCES `school`.`teachers` (`teachers_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
