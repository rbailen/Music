CREATE TABLE `music`.`productor` (
  `idproductor` INT NOT NULL AUTO_INCREMENT,
  `idpersona` INT NULL,
  PRIMARY KEY (`idproductor`),
  UNIQUE INDEX `idpersona_UNIQUE` (`idpersona` ASC),
  CONSTRAINT `productor_persona`
    FOREIGN KEY (`idpersona`)
    REFERENCES `music`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);

	