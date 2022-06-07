-- Mostrar en una consulta el código, nombre, apellido paterno, apellido materno y sueldo; de los empleados que ganan más de S/. 1500.
SELECT IDEmpleado AS Codigo, empNombres AS Nombre,
empApellidoPaterno AS Apellido_Paterno, empApellidoMaterno AS Apellido_Materno,
empSueldo AS Sueldo
FROM tblEmpleado
WHERE empSueldo > 1500