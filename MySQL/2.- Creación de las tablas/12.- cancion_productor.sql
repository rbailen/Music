CREATE TABLE `music`.`cancion_productor` (
  `idcancion__productor` INT NOT NULL AUTO_INCREMENT,
  `idcancion` INT NULL,
  `idproductor` INT NULL,
  PRIMARY KEY (`idcancion__productor`),
  INDEX `cancion_productor_cancion_idx` (`idcancion` ASC),
  INDEX `cancion_productor_productor_idx` (`idproductor` ASC),
  CONSTRAINT `cancion_productor_cancion`
    FOREIGN KEY (`idcancion`)
    REFERENCES `music`.`cancion` (`idcancion`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `cancion_productor_productor`
    FOREIGN KEY (`idproductor`)
    REFERENCES `music`.`productor` (`idproductor`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);

	