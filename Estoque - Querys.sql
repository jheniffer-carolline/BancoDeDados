-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_estoque
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_estoque
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_estoque` DEFAULT CHARACTER SET utf8 ;
USE `db_estoque` ;

-- -----------------------------------------------------
-- Table `db_estoque`.`Marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_estoque`.`Marcas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(1000) NOT NULL,
  `ativo` TINYINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_estoque`.`Produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_estoque`.`Produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(1000) NOT NULL,
  `preco` DOUBLE NOT NULL,
  `Marcas_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Produtos_Marcas_idx` (`Marcas_id` ASC) VISIBLE,
  CONSTRAINT `fk_Produtos_Marcas`
    FOREIGN KEY (`Marcas_id`)
    REFERENCES `db_estoque`.`Marcas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
