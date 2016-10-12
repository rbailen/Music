/*Recupera toda la información relevante de la canción “Walking by myself”.*/

SELECT c.titulo AS 'CANCION', d.titulo AS 'LP', p.nombre AS 'ARTISTA', per_musico.nombre AS 'MUSICO', i.nombre AS 'INSTRUMENTO', per_otro.nombre as 'OTRO', per_letrista.nombre AS 'LETRISTA', per_prod.nombre AS 'PRODUCTOR', c.letra AS 'LETRA'
FROM cancion c
INNER JOIN disco d ON (d.iddisco = c.iddisco)
INNER JOIN artista a ON (a.idartista = d.idartista)
INNER JOIN persona p ON (p.idpersona = a.idpersona)

/* PRODUCTORES */
INNER JOIN  cancion_productor cp ON (c.idcancion = cp.idcancion)
INNER  JOIN productor prod ON (prod.idproductor = cp.idproductor)
INNER JOIN  persona per_prod ON (prod.idpersona = per_prod.idpersona)

/* LETRISTAS */
INNER JOIN cancion_letrista cl ON (c.idcancion = cl.idcancion)
INNER JOIN letrista l ON (l.idletrista = cl.idletrista)
INNER JOIN persona per_letrista ON (l.idpersona = per_letrista.idpersona)

/* OTROS */
INNER JOIN cancion_otro co ON (c.idcancion = co.idcancion)
INNER JOIN otro o ON (o.idotro = co.idotro)
INNER JOIN persona per_otro ON (o.idpersona = per_otro.idpersona)

/* MÚSICOS E INSTRUMENTOS */
INNER JOIN cancion_musico_instrumento cmi ON (c.idcancion = cmi.idcancion)
INNER JOIN musico m ON (m.idmusico = cmi.idmusico)
INNER JOIN persona per_musico ON (m.idpersona = per_musico.idpersona)
INNER JOIN instrumento i ON (i.idinstrumento = cmi.idinstrumento)

WHERE c.titulo = 'Walking by myself'
ORDER BY per_musico.nombre ASC, per_otro.nombre ASC, per_letrista.nombre ASC, per_prod.nombre ASC;