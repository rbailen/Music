CREATE TABLE `music`.`letrista` (
  `idletrista` INT NOT NULL AUTO_INCREMENT,
  `idpersona` INT NULL,
  PRIMARY KEY (`idletrista`),
  UNIQUE INDEX `idpersona_UNIQUE` (`idpersona` ASC),
  CONSTRAINT `letrista_persona`
    FOREIGN KEY (`idpersona`)
    REFERENCES `music`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);

	