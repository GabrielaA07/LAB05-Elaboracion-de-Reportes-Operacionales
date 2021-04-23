/* PASO 14. MOSTRAR CUANTOS LIBROS QUE SE HAN PRESTADO Y AGRUPARLOS POR EL ESTANTE */
SELECT ej.Ubicacion, COUNT(li.Titulo) AS 'Libros Prestados' FROM Libro AS li
INNER JOIN Ejemplar AS ej ON li.Codigo = ej.Cod_Libro
WHERE ej.Estado = 'Prestado'
GROUP BY ej.Ubicacion
