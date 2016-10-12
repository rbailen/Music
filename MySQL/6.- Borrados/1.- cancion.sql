/*Elimina la canción bonustrack del elepé “Still got the blues”.*/

DELETE FROM `music`.`cancion_letrista` WHERE `idcancion_letrista`='15';

DELETE FROM `music`.`cancion_musico_instrumento` WHERE `idcancion_musico_instrumento`='204';
DELETE FROM `music`.`cancion_musico_instrumento` WHERE `idcancion_musico_instrumento`='205';
DELETE FROM `music`.`cancion_musico_instrumento` WHERE `idcancion_musico_instrumento`='206';
DELETE FROM `music`.`cancion_musico_instrumento` WHERE `idcancion_musico_instrumento`='391';
DELETE FROM `music`.`cancion_musico_instrumento` WHERE `idcancion_musico_instrumento`='392';

DELETE FROM `music`.`cancion_otro` WHERE `idcancion_otro`='139';
DELETE FROM `music`.`cancion_otro` WHERE `idcancion_otro`='140';
DELETE FROM `music`.`cancion_otro` WHERE `idcancion_otro`='141';
DELETE FROM `music`.`cancion_otro` WHERE `idcancion_otro`='142';
DELETE FROM `music`.`cancion_otro` WHERE `idcancion_otro`='143';
DELETE FROM `music`.`cancion_otro` WHERE `idcancion_otro`='144';
DELETE FROM `music`.`cancion_otro` WHERE `idcancion_otro`='267';

DELETE FROM `music`.`cancion_productor` WHERE `idcancion__productor`='49';

DELETE FROM `music`.`cancion` WHERE `idcancion`='24';

