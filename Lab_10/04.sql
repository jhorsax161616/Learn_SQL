/*4. Que se muestre el IDCategoria, NombreCategoria y Sueldo;
de la tabla Categoria. Donde el sueldo este entre 1500 y 5000.*/

SELECT IDCategoria, catNombre, catSueldo
FROM tblCategoria
WHERE catSueldo BETWEEN 1500 AND 5000