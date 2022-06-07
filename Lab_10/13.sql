/*13. Que se muestre el IDEmpleado y el ApellidoPaterno; de la tabla Empleado. Donde 
la fecha de ingreso haya sido entre el 01/08/2012 y el 31/07/2013.*/

SELECT IDEmpleado, empApPaterno
FROM tblEmpleado
WHERE empFechaIngreso BETWEEN '2012-08-01' AND '2013-07-31'