CREATE TABLE `music`.`disco` (
  `iddisco` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `anio` INT NULL,
  `idartista` INT NULL,
  `idgrupo` INT NULL,
  PRIMARY KEY (`iddisco`),
  INDEX `artista_disco_idx` (`idartista` ASC),
  INDEX `grupo_disco_idx` (`idgrupo` ASC),
  CONSTRAINT `artista_disco`
    FOREIGN KEY (`idartista`)
    REFERENCES `music`.`artista` (`idartista`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `grupo_disco`
    FOREIGN KEY (`idgrupo`)
    REFERENCES `music`.`grupo` (`idgrupo`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);
