/* PASO 09. DATOS DE AUTORES JUNTO CON LOS TITULOS DE LOS LIBROS QUE HANESCRITOS */
SELECT (a.Nombres + '' + a.Apellidos) AS Autor, li.Titulo FROM Autor_Libro AS al
INNER JOIN Autor AS a ON al.Cod_Autor = a.Codigo
INNER JOIN Libro AS li ON al.Cod_Libro = li.Codigo
ORDER BY a.Nombres
