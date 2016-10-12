CREATE TABLE `music`.`cancion` (
  `idcancion` INT NOT NULL AUTO_INCREMENT,
  `numero` INT NULL,
  `titulo` VARCHAR(45) NULL,
  `iddisco` INT NOT NULL,
  PRIMARY KEY (`idcancion`),
  INDEX `cancion_disco_idx` (`iddisco` ASC),
  CONSTRAINT `cancion_disco`
    FOREIGN KEY (`iddisco`)
    REFERENCES `music`.`disco` (`iddisco`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);