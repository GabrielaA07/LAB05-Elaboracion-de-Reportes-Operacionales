/* PASO 12. MOSTRAR LOS TITULOS DE LOS LIBROS DONDE EL ESTADO SEA 'PRESTADO' */
SELECT DISTINCT li.Titulo FROM Libro AS li
INNER JOIN Ejemplar AS ej ON li.Codigo = ej.Cod_Libro
WHERE ej.Estado = 'Prestado'
GROUP BY li.Titulo
