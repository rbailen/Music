CREATE TABLE `music`.`cancion_musico_instrumento` (
  `idcancion_musico` INT NOT NULL AUTO_INCREMENT,
  `idcancion` INT NULL,
  `idmusico` INT NULL,
  `idinstrumento` INT NULL,
  PRIMARY KEY (`idcancion_musico`),
  INDEX `cancion_musico_instrumento_cancion_idx` (`idcancion` ASC),
  INDEX `cancion_musico_instrumento_musico_idx` (`idmusico` ASC),
  INDEX `cancion_musico_instrumento_instrumento_idx` (`idinstrumento` ASC),
  CONSTRAINT `cancion_musico_instrumento_cancion`
    FOREIGN KEY (`idcancion`)
    REFERENCES `music`.`cancion` (`idcancion`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `cancion_musico_instrumento_musico`
    FOREIGN KEY (`idmusico`)
    REFERENCES `music`.`musico` (`idmusico`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `cancion_musico_instrumento_instrumento`
    FOREIGN KEY (`idinstrumento`)
    REFERENCES `music`.`instrumento` (`idinstrumento`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);

	
	