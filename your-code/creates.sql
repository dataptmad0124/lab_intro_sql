-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lab_intro_sql(cars)
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_intro_sql(cars)
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_intro_sql(coches_db)` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `lab_intro_sql(coches_db)` ;

-- -----------------------------------------------------
-- Table `lab_intro_sql(cars)`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_intro_sql(coches_db)`.`cars` (
  `ID` INT NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` INT NOT NULL,
  `Color` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_intro_sql(cars)`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_intro_sql(coches_db)`.`customers` (
  `ID` INT NOT NULL,
  `Customer ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone Number` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `Province` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Postal Code` INT NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  UNIQUE INDEX `Customer ID_UNIQUE` (`Customer ID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_intro_sql(cars)`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_intro_sql(coches_db)`.`salesperson` (
  `ID` INT NOT NULL,
  `Staff ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `idSalesperson_UNIQUE` (`ID` ASC) VISIBLE,
  UNIQUE INDEX `Staff ID_UNIQUE` (`Staff ID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_intro_sql(cars)`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_intro_sql(coches_db)`.`invoices` (
  `ID` INT NOT NULL,
  `Invoice Number` INT NOT NULL,
  `Date` VARCHAR(45) NOT NULL,
  `cars_ID` INT NOT NULL,
  `customers_ID` INT NOT NULL,
  `salesperson_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `idInvoices_UNIQUE` (`ID` ASC) VISIBLE,
  UNIQUE INDEX `Invoice ID_UNIQUE` (`Invoice Number` ASC) VISIBLE,
  INDEX `fk_invoices_cars_idx` (`cars_ID` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_ID` ASC) VISIBLE,
  INDEX `fk_invoices_salesperson1_idx` (`salesperson_ID` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_cars`
    FOREIGN KEY (`cars_ID`)
    REFERENCES `lab_intro_sql(coches_db)`.`cars` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_ID`)
    REFERENCES `lab_intro_sql(coches_db)`.`customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salesperson1`
    FOREIGN KEY (`salesperson_ID`)
    REFERENCES `lab_intro_sql(coches_db)`.`salesperson` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

