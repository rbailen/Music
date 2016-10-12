CREATE TABLE `music`.`musico` (
  `idmusico` INT NOT NULL AUTO_INCREMENT,
  `idpersona` INT NULL,
  PRIMARY KEY (`idmusico`),
  UNIQUE INDEX `idpersona_UNIQUE` (`idpersona` ASC),
  CONSTRAINT `musico_persona`
    FOREIGN KEY (`idpersona`)
    REFERENCES `music`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);
