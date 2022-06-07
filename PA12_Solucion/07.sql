/*7. Consulta que muestre cuánto ganan los empleados al año. Teniendo en cuenta
que reciben 12 meses además del 10% de bonificación del valor de un sueldo 
mensual. Se sabe que el campo “empSueldo” muestra el sueldo mensual. 
Mostrar el código, nombre completo y sueldo final. (2 puntos)*/

SELECT tblEmpleado.IDEmpleado, empNombres + ' ' + empApellidoPaterno + ' '
    + empApellidoMaterno AS NombreCompleto,
    (tblEmpleado.empSueldo * 12) + 0.10 * tblEmpleado.empSueldo AS SueldoFinal
FROM tblEmpleado

SELECT * FROM tblEmpleado