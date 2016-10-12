CREATE TABLE `music`.`artista` (
  `idartista` INT NOT NULL AUTO_INCREMENT,
  `papel` VARCHAR(45) NULL,
  `idpersona` INT NULL,
  `idgrupo` INT NULL,
  PRIMARY KEY (`idartista`),
  UNIQUE INDEX `idpersona_UNIQUE` (`idpersona` ASC),
  INDEX `idgrupo_idx` (`idgrupo` ASC),
  CONSTRAINT `artista_persona`
    FOREIGN KEY (`idpersona`)
    REFERENCES `music`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `artista_grupo`
    FOREIGN KEY (`idgrupo`)
    REFERENCES `music`.`grupo` (`idgrupo`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);

	