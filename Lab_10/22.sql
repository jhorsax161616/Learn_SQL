/*22. Que se muestre el IDEmpleado y ApellidoPaterno; de la tabla Empleado. IDOficina 
y NombreOficina; de la tabla Oficina. IDCategoria, NombreCategoria y Sueldo. 
Donde solo se muestre el personal de sexo masculino, que gane de S/. 3000 a más, 
y que pertenezca a Gerencia General.*/

SELECT tblEmpleado.IDEmpleado, tblEmpleado.empApPaterno,
    tblOficina.IDOficina, tblOficina.ofiNombre, tblCategoria.IDCategoria,
    tblCategoria.catNombre, tblCategoria.catSueldo
FROM tblEmpleado
INNER JOIN tblOficina ON tblEmpleado.IDOficina = tblOficina.IDOficina
INNER JOIN tblCategoria ON tblEmpleado.IDCategoria = tblCategoria.IDCategoria
WHERE tblOficina.ofiNombre = 'Gerencia General'
    AND tblEmpleado.empSexo = 1
    AND tblCategoria.catSueldo > 3000