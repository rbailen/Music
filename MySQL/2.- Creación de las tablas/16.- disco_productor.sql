CREATE TABLE `music`.`disco_productor` (
  `iddisco_productor` INT NOT NULL AUTO_INCREMENT,
  `iddisco` INT NULL,
  `idproductor` INT NULL,
  PRIMARY KEY (`iddisco_productor`),
  INDEX `disco_productor_disco_idx` (`iddisco` ASC),
  INDEX `disco_productor_productor_idx` (`idproductor` ASC),
  CONSTRAINT `disco_productor_disco`
    FOREIGN KEY (`iddisco`)
    REFERENCES `music`.`disco` (`iddisco`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `disco_productor_productor`
    FOREIGN KEY (`idproductor`)
    REFERENCES `music`.`productor` (`idproductor`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);
