/*Que se muestre el IDEmpleado, ApellidoPaterno, ApellidoMaterno, Nombres y 
HorasSemanales; de la tabla Empleado. Donde las horas semanales sean mayores 
a 30.*/

SELECT tblEmpleado.IDEmpleado, tblEmpleado.empApPaterno, tblEmpleado.empApMaterno,
    tblEmpleado.empNombres, tblEmpleado.empHorasSemanales
FROM tblEmpleado
WHERE tblEmpleado.empHorasSemanales > 30
