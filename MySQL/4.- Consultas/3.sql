/* Recupera por orden cronológico todos los discos publicados por el músico Gary Moore 
que están registrados en la base de datos. */

SELECT d.titulo AS 'LP', d.anio AS 'AÑO', p.nombre AS 'ARTISTA', c.numero AS 'Nº CANCION', c.titulo AS 'CANCION'
FROM disco d
INNER JOIN artista a ON (a.idartista = d.idartista)
INNER JOIN persona p ON (p.idpersona = a.idpersona)
INNER JOIN cancion c ON (c.iddisco = d.iddisco)
WHERE p.nombre = 'GARY MOORE'
ORDER BY d.anio ASC, c.numero ASC;