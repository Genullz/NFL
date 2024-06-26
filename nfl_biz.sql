-- MySQL Script generated by MySQL Workbench
-- Mon Jan  8 18:40:56 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
SHOW WARNINGS;
-- -----------------------------------------------------
-- Schema nfl_biz
-- -----------------------------------------------------
SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `clubs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `clubs` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `clubs` (
  `TEAM` TINYTEXT NOT NULL,
  `HOME_STADIUM` TINYTEXT NULL DEFAULT NULL,
  `LOCATION` TEXT NULL DEFAULT NULL,
  `LATITUDE` DECIMAL(20,0) NULL DEFAULT NULL,
  `LONGITUDE` DECIMAL(20,0) NULL DEFAULT NULL,
  `MASCOT` TINYTEXT NULL DEFAULT NULL,
  `CONFERENCE` TINYTEXT NULL DEFAULT NULL,
  `DIVISION` TINYTEXT NULL DEFAULT NULL,
  `SUPERBOWL_WINS` INT NULL DEFAULT NULL,
  `YEAR_ESTABLISHED` INT NULL DEFAULT NULL,
  `players_Player_ID` INT NOT NULL,
  PRIMARY KEY (`TEAM`, `players_Player_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `clubs_has_transactions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `clubs_has_transactions` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `clubs_has_transactions` (
  `clubs_TEAM` TINYTEXT NOT NULL,
  `clubs_players_Player_ID` INT NOT NULL,
  `transactions_Cap_Number` TEXT NOT NULL,
  PRIMARY KEY (`clubs_TEAM`, `clubs_players_Player_ID`, `transactions_Cap_Number`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `player_history`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `player_history` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `player_history` (
  `player_name` TEXT NOT NULL,
  `status` TEXT NULL DEFAULT NULL,
  `first_name` TEXT NULL DEFAULT NULL,
  `last_name` TEXT NULL DEFAULT NULL,
  `esb_id` TEXT NULL DEFAULT NULL,
  `gsis_id` TEXT NULL DEFAULT NULL,
  `suffix` TEXT NULL DEFAULT NULL,
  `birth_date` TEXT NULL DEFAULT NULL,
  `college_name` TEXT NULL DEFAULT NULL,
  `position_group` TEXT NULL DEFAULT NULL,
  `position` TEXT NULL DEFAULT NULL,
  `jersey_number` INT NULL DEFAULT NULL,
  `height` INT NULL DEFAULT NULL,
  `weight` INT NULL DEFAULT NULL,
  `years_of_experience` INT NULL DEFAULT NULL,
  `team_abbr` TEXT NULL DEFAULT NULL,
  `entry_year` TEXT NULL DEFAULT NULL,
  `rookie_year` TEXT NULL DEFAULT NULL,
  `draft_club` TEXT NULL DEFAULT NULL,
  `college_conference` TEXT NULL DEFAULT NULL,
  `status_short_description` TEXT NULL DEFAULT NULL,
  `gsis_it_id` TEXT NULL DEFAULT NULL,
  `draft_number` TEXT NULL DEFAULT NULL,
  `uniform_number` TEXT NULL DEFAULT NULL,
  `players_Player_ID` INT NOT NULL,
  PRIMARY KEY (`player_name`, `players_Player_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `players`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `players` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `players` (
  `Player_ID` INT NOT NULL,
  `Player` TEXT NULL DEFAULT NULL,
  `Position` TEXT NULL DEFAULT NULL,
  `Height` TEXT NULL DEFAULT NULL,
  `Weightt` INT NULL DEFAULT NULL,
  `Age` INT NULL DEFAULT NULL,
  `College` TEXT NULL DEFAULT NULL,
  `Team` TEXT NULL DEFAULT NULL,
  `transactions_Cap_Number` TEXT NOT NULL,
  `salary_Total Value` DECIMAL(20,0) NOT NULL,
  PRIMARY KEY (`Player_ID`, `transactions_Cap_Number`, `salary_Total Value`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `salary`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `salary` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `salary` (
  `Player` VARCHAR(45) NULL DEFAULT NULL,
  `Position` VARCHAR(4) NULL DEFAULT NULL,
  `Team` VARCHAR(45) NULL DEFAULT NULL,
  `Total Value` DECIMAL(20,0) NOT NULL,
  `APY` DECIMAL(20,0) NULL DEFAULT NULL,
  `Total Guaranteed` DECIMAL(20,0) NULL DEFAULT NULL,
  `Avg. Guarantee/Year` DECIMAL(20,0) NULL DEFAULT NULL,
  `Percentage_ Guaranteed` DECIMAL(20,0) NULL DEFAULT NULL,
  PRIMARY KEY (`Total Value`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `transactions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `transactions` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `transactions` (
  `Player` TEXT NULL DEFAULT NULL,
  `Team` TEXT NULL DEFAULT NULL,
  `Cap_Number` TEXT NOT NULL,
  `Cut_Pre_June_1` TEXT NULL DEFAULT NULL,
  `Cut_Post_June_1` TEXT NULL DEFAULT NULL,
  `Trade_Pre_June_1` TEXT NULL DEFAULT NULL,
  `Trade_Post_June_1` TEXT NULL DEFAULT NULL,
  `Restructure` TEXT NULL DEFAULT NULL,
  `Extension` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`Cap_Number`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
