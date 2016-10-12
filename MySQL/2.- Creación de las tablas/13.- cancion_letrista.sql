CREATE TABLE `music`.`cancion_letrista` (
  `idcancion_letrista` INT NOT NULL AUTO_INCREMENT,
  `idcancion` INT NULL,
  `idletrista` INT NULL,
  PRIMARY KEY (`idcancion_letrista`),
  INDEX `cancion_letrista_cancion_idx` (`idcancion` ASC),
  INDEX `cancion_letrista_letrista_idx` (`idletrista` ASC),
  CONSTRAINT `cancion_letrista_cancion`
    FOREIGN KEY (`idcancion`)
    REFERENCES `music`.`cancion` (`idcancion`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `cancion_letrista_letrista`
    FOREIGN KEY (`idletrista`)
    REFERENCES `music`.`letrista` (`idletrista`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);
