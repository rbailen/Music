/*Recupera la información de todos los artistas registrados en la base de datos por orden alfabético.*/

SELECT p.nombre AS 'NOMBRE', a.papel AS 'PAPEL', COALESCE(g.nombre, 'SIN GRUPO') AS 'GRUPO', COALESCE(d_artista.titulo, d_grupo.titulo, 'SIN DISCO') AS 'DISCO' 
FROM persona p
INNER JOIN artista a ON (p.idpersona = a.idpersona)
LEFT JOIN grupo g ON (g.idgrupo = a.idgrupo)
LEFT JOIN disco d_artista ON (d_artista.idartista = a.idartista)
LEFT JOIN disco d_grupo ON (d_grupo.idgrupo = g.idgrupo)
ORDER BY p.nombre ASC;