/*11. Que se muestre el IDEmpleado y el ApellidoPaterno; de la tabla Empleado. Donde 
la fecha de ingreso haya sido en el 2013*/

SELECT IDEmpleado, empApPaterno
FROM tblEmpleado
WHERE YEAR(empFechaIngreso) = 2013