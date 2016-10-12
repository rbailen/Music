/*Recupera por orden alfabético la información de todos los discos registrados*/

SELECT d.titulo AS 'LP', d.anio AS 'AÑO', COALESCE(per_artista.nombre, 'SIN ARTISTA') AS 'ARTISTA', COALESCE(g.nombre, 'SIN GRUPO') AS 'GRUPO', per_productor.nombre AS 'PRODUCTOR', COALESCE(per_compositor.nombre, 'SIN COMPOSITOR') AS 'COMPOSITOR', COALESCE(per_letrista.nombre, 'SIN LETRISTA') AS 'LETRISTA', COALESCE(per_otro.nombre, 'SIN OTRO') AS 'OTRO', COALESCE(per_musico.nombre, 'SIN MÚSICO') AS 'MÚSICO', COALESCE(i.nombre, 'SIN INSTRUMENTO') AS 'INSTRUMENTO', c.numero AS 'Nº CANCION', c.titulo AS 'TITULO'
FROM disco d

/* Artistas del disco */
LEFT JOIN artista a ON (a.idartista = d.idartista)
LEFT JOIN persona per_artista ON (per_artista.idpersona = a.idpersona)

/* Grupo del disco */
LEFT JOIN grupo g ON (g.idgrupo = d.idgrupo)

/* Canciones del disco */
INNER JOIN cancion c ON (c.iddisco = d.iddisco)

/* Productores del disco */
LEFT JOIN disco_productor dprod ON (dprod.iddisco = d.iddisco)
LEFT JOIN productor prod ON (prod.idproductor = dprod.idproductor)
LEFT JOIN persona per_productor ON (per_productor.idpersona = prod.idpersona)

/* Compositores del disco */
LEFT JOIN cancion_compositor cp ON (cp.idcancion = c.idcancion)
LEFT JOIN compositor comp ON (comp.idcompositor = cp.idcompositor)
LEFT JOIN persona per_compositor ON (per_compositor.idpersona = comp.idpersona)

/* Letristas del disco */
LEFT JOIN cancion_letrista cl ON (cl.idcancion = c.idcancion)
LEFT JOIN letrista l ON (cl.idletrista = l.idletrista)
LEFT JOIN persona per_letrista ON (per_letrista.idpersona = l.idpersona)

/* Otro */
LEFT JOIN cancion_otro co ON (co.idcancion = c.idcancion)
LEFT JOIN otro o ON (co.idotro = o.idotro)
LEFT JOIN persona per_otro ON (per_otro.idpersona = o.idpersona)

/* Músicos e instrumentos */
LEFT JOIN cancion_musico_instrumento cmi ON (cmi.idcancion = c.idcancion)
LEFT JOIN musico m ON (m.idmusico = cmi.idmusico)
LEFT JOIN persona per_musico ON (per_musico.idpersona = m.idpersona)
LEFT JOIN instrumento i ON (i.idinstrumento = cmi.idinstrumento)

ORDER BY d.titulo ASC, c.numero ASC, per_productor.nombre ASC, per_compositor.nombre ASC, per_letrista.nombre ASC, per_otro.nombre ASC, per_musico.nombre ASC, i.nombre ASC;