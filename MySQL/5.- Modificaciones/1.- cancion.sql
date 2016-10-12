/*Modifica la estructura de alguna de las tablas con el objeto de poder almacenar
también las letras de las canciones.*/

ALTER TABLE `music`.`cancion` 
ADD COLUMN `letra` LONGTEXT NULL AFTER `iddisco`;
