/*21. Que se muestre el IDEmpleado y ApellidoPaterno; de la tabla Empleado. IDOficina 
y NombreOficina; de la tabla Oficina. Donde solo se muestre el personal de la 
Oficina de logística que trabaja 24 horas a la semana.
*/

SELECT tblEmpleado.IDEmpleado, tblEmpleado.empApPaterno,
    tblOficina.IDOficina, tblOficina.ofiNombre
FROM tblEmpleado
INNER JOIN tblOficina ON tblEmpleado.IDOficina = tblOficina.IDOficina
WHERE tblOficina.ofiNombre = 'Oficina de Logística'
    AND tblEmpleado.empHorasSemanales = 24