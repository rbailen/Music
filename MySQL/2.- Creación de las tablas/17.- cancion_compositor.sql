CREATE TABLE `music`.`cancion_compositor` (
  `idcancion_compositor` INT NOT NULL AUTO_INCREMENT,
  `idcancion` INT NULL,
  `idcompositor` INT NULL,
  PRIMARY KEY (`idcancion_compositor`),
  INDEX `cancion_compositor_cancion_idx` (`idcancion` ASC),
  INDEX `cancion_compositor_compositor_idx` (`idcompositor` ASC),
  CONSTRAINT `cancion_compositor_cancion`
    FOREIGN KEY (`idcancion`)
    REFERENCES `music`.`cancion` (`idcancion`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `cancion_compositor_compositor`
    FOREIGN KEY (`idcompositor`)
    REFERENCES `music`.`compositor` (`idcompositor`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);

	
	