/* PASO 11. CUANTOS EJEMPLARES HAY POR CADA LIBRO - TITULO, EJEMPLAR */
SELECT li.Titulo, COUNT(ej.Cod_Libro) FROM Libro AS li
INNER JOIN Ejemplar AS ej ON li.Codigo = ej.Cod_Libro
GROUP BY li.Titulo
