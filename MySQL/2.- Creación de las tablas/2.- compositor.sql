CREATE TABLE `music`.`compositor` (
  `idcompositor` INT NOT NULL AUTO_INCREMENT,
  `idpersona` INT NULL,
  PRIMARY KEY (`idcompositor`),
  UNIQUE INDEX `idpersona_UNIQUE` (`idpersona` ASC),
  CONSTRAINT `idpersona`
    FOREIGN KEY (`idpersona`)
    REFERENCES `music`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);

	