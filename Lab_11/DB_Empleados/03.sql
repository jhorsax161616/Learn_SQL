/* 3. Realizar una consulta de resumen donde se muestre la cantidad de
empleados por  cada oficina y por cada categoría.  */

SELECT tblEmpleado.IDOficina, tblEmpleado.IDCategoria,
    COUNT(tblEmpleado.IDEmpleado) AS Cantidad
FROM tblEmpleado
GROUP BY tblEmpleado.IDOficina, tblEmpleado.IDCategoria