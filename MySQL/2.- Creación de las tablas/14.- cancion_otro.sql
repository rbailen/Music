CREATE TABLE `music`.`cancion_otro` (
  `idcancion_otro` INT NOT NULL AUTO_INCREMENT,
  `idcancion` INT NULL,
  `idotro` INT NULL,
  PRIMARY KEY (`idcancion_otro`),
  INDEX `cancion_otro_cancion_idx` (`idcancion` ASC),
  INDEX `cancion_otro_otro_idx` (`idotro` ASC),
  CONSTRAINT `cancion_otro_cancion`
    FOREIGN KEY (`idcancion`)
    REFERENCES `music`.`cancion` (`idcancion`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `cancion_otro_otro`
    FOREIGN KEY (`idotro`)
    REFERENCES `music`.`otro` (`idotro`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);
