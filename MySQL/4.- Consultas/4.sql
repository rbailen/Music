/* Recupera todas las canciones del elepé “Tentación” tal y cómo
aparecen ordenadas en el disco. */
	
SELECT d.titulo AS 'LP', d.anio as 'AÑO', g.nombre AS 'GRUPO', c.numero AS 'Nº CANCION', c.titulo AS 'TITULO'
FROM disco d
INNER JOIN cancion c ON (c.iddisco = d.iddisco)
INNER JOIN grupo g ON (g.idgrupo = d.idgrupo)
WHERE d.titulo = 'Tentación'
ORDER BY c.numero ASC;	