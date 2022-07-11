-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`carrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`carrera` (
  `idCarrera` INT NOT NULL AUTO_INCREMENT,
  `nombreCarrera` VARCHAR(250) NOT NULL,
  `duracionCarrera` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCarrera`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`alumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`alumno` (
  `idMatricula` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NOT NULL,
  `edad` INT NOT NULL,
  `semestre` VARCHAR(45) NOT NULL,
  `genero` VARCHAR(45) NOT NULL,
  `carrera` VARCHAR(45) NOT NULL,
  `idCarrera1` INT NOT NULL,
  PRIMARY KEY (`idMatricula`),
  INDEX `fkAlumnoCarrera_idx` (`idCarrera1` ASC) VISIBLE,
  CONSTRAINT `fkAlumnoCarrera`
    FOREIGN KEY (`idCarrera1`)
    REFERENCES `mydb`.`carrera` (`idCarrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`becas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`becas` (
  `claveBeca` INT NOT NULL AUTO_INCREMENT,
  `tipoBeca` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`claveBeca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`materia` (
  `idMateria` INT NOT NULL AUTO_INCREMENT,
  `nombreMateria` VARCHAR(60) NOT NULL,
  `CreditosMateria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idMateria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`alumnoBecas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`alumnoBecas` (
  `claveBeca1` INT NOT NULL,
  `idMatricula1` INT NOT NULL,
  INDEX `fkAlumnoBecasIdMatriculas_idx` (`idMatricula1` ASC) VISIBLE,
  INDEX `fkAlumnoBecasBecas_idx` (`claveBeca1` ASC) VISIBLE,
  CONSTRAINT `fkAlumnoBecasMatriculas`
    FOREIGN KEY (`idMatricula1`)
    REFERENCES `mydb`.`alumno` (`idMatricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkAlumnoBecasBecas`
    FOREIGN KEY (`claveBeca1`)
    REFERENCES `mydb`.`becas` (`claveBeca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`profesor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`profesor` (
  `idProfesor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NOT NULL,
  `direccion` VARCHAR(254) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `horario` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`idProfesor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`alumnoProfesor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`alumnoProfesor` (
  `idProfesor1` INT NOT NULL,
  `idMatricula1` INT NOT NULL,
  INDEX `fkAlumnoProfesorProfesor_idx` (`idProfesor1` ASC) VISIBLE,
  INDEX `fkAlumnoProfesorAlumno_idx` (`idMatricula1` ASC) VISIBLE,
  CONSTRAINT `fkAlumnoProfesorProfesor`
    FOREIGN KEY (`idProfesor1`)
    REFERENCES `mydb`.`profesor` (`idProfesor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkAlumnoProfesorAlumno`
    FOREIGN KEY (`idMatricula1`)
    REFERENCES `mydb`.`alumno` (`idMatricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`alumnoMateria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`alumnoMateria` (
  `idMateria1` INT NOT NULL,
  `idMatricula1` INT NOT NULL,
  INDEX `fkAlumnoMateriaMateria_idx` (`idMateria1` ASC) VISIBLE,
  INDEX `fkAlumnoMateriaAlumno_idx` (`idMatricula1` ASC) VISIBLE,
  CONSTRAINT `fkAlumnoMateriaMateria`
    FOREIGN KEY (`idMateria1`)
    REFERENCES `mydb`.`materia` (`idMateria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkAlumnoMateriaAlumno`
    FOREIGN KEY (`idMatricula1`)
    REFERENCES `mydb`.`alumno` (`idMatricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`alumnoCarrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`alumnoCarrera` (
  `idMatricula1` INT NOT NULL,
  `idCarrera` INT NOT NULL,
  INDEX `fkAlumnoCarreraAlumno_idx` (`idMatricula1` ASC) VISIBLE,
  CONSTRAINT `fkAlumnoCarreraAlumno`
    FOREIGN KEY (`idMatricula1`)
    REFERENCES `mydb`.`alumno` (`idMatricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
