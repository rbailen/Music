/*Modifica la estructura de alguna de las tablas con el objeto de poder almacenar
tambi�n las letras de las canciones.*/

ALTER TABLE `music`.`cancion` 
ADD COLUMN `letra` LONGTEXT NULL AFTER `iddisco`;
