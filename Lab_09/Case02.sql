--Mostrar en una consulta el código, nombre y sueldo; de los empleados que ganan menos de S/. 1600
SELECT IDEmpleado AS Codigo, empNombres AS Nombre, empSueldo AS Sueldo
FROM tblEmpleado
WHERE empSueldo < 1600