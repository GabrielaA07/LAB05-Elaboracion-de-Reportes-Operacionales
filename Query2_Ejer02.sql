/* PASO 10. TODOS LOS AUTORES CON LIBROS QUE HAN SIDO PUBLICADOS POR EDITORIAL OMEGA */
SELECT (a.Nombres + ' ' + a.Apellidos) AS Autor FROM Autor AS a
INNER JOIN Autor_Libro AS al ON a.Codigo = al.Cod_Autor
INNER JOIN Libro AS li ON al.Cod_Libro = li.Codigo
INNER JOIN Editorial AS ed ON li.Cod_Editorial = ed.Codigo
WHERE ed.Nombre = 'Omega'
ORDER BY a.Codigo
