CREATE TABLE `music`.`otro` (
  `idotro` INT NOT NULL AUTO_INCREMENT,
  `idpersona` INT NULL,
  `papel` VARCHAR(45) NULL,
  PRIMARY KEY (`idotro`),
  UNIQUE INDEX `idpersona_UNIQUE` (`idpersona` ASC),
  CONSTRAINT `otro_persona`
    FOREIGN KEY (`idpersona`)
    REFERENCES `music`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);

	
