/*2. Que se muestre el IDEmpleado, ApellidoPaterno, ApellidoMaterno, Nombres, 
EstadoCivil y HorasSemanales; de la tabla Empleado. Donde las horas semanales 
sean menores a 24.*/

SELECT IDEmpleado, empApPaterno, empApMaterno, empNombres,
    empEstadoCivil, empHorasSemanales
FROM tblEmpleado
WHERE empHorasSemanales < 24