-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cec03_Aula_49
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cec03_Aula_49
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cec03_Aula_49` ;
USE `cec03_Aula_49` ;

-- -----------------------------------------------------
-- Table `cec03_Aula_49`.`tipos_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cec03_Aula_49`.`tipos_produtos` (
  `pk` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`pk`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cec03_Aula_49`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cec03_Aula_49`.`produtos` (
  `pk` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  `preco` DECIMAL(8,2) NOT NULL,
  `id_tipo_produto` INT NOT NULL,
  PRIMARY KEY (`pk`),
  INDEX `fk_produtos_1_idx` (`id_tipo_produto` ASC),
  CONSTRAINT `fk_produtos_1`
    FOREIGN KEY (`id_tipo_produto`)
    REFERENCES `cec03_Aula_49`.`tipos_produtos` (`pk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cec03_Aula_49`.`pacientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cec03_Aula_49`.`pacientes` (
  `pk` INT NOT NULL AUTO_INCREMENT,
  `nome_paciente` VARCHAR(50) NOT NULL,
  `endereco` VARCHAR(50) NOT NULL,
  `bairro` VARCHAR(40) NOT NULL,
  `cidade` VARCHAR(40) NOT NULL,
  `estado` VARCHAR(2) NOT NULL,
  `cep` VARCHAR(9) NOT NULL,
  `data_nascimeto` DATE NOT NULL,
  PRIMARY KEY (`pk`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cec03_Aula_49`.`professores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cec03_Aula_49`.`professores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `telefone` INT(10) NOT NULL,
  `nome` VARCHAR(80) NOT NULL DEFAULT ',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cec03_Aula_49`.`turmas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cec03_Aula_49`.`turmas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `capacidade` INT NOT NULL,
  `id_prifessor` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_turmas_1_idx` (`id_prifessor` ASC),
  CONSTRAINT `fk_turmas_1`
    FOREIGN KEY (`id_prifessor`)
    REFERENCES `cec03_Aula_49`.`professores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
