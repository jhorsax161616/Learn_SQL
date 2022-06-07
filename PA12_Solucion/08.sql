/*8. Consulta que genere un código de un empleado, sabiendo que debe estar 
compuesto por la última letra del apellido paterno, las dos últimas letras del 
apellido materno, guion, las 3 primeras letras del nombre y el 3er. y 5to. dígito del 
número del seguro social. Mostrar el código del empleado, número seguro social, 
nombres completos y código generado. (2 puntos)
*/

SELECT IDEmpleado, empNumSegSocial, empNombres + ' ' + empApellidoPaterno
    + ' ' + empApellidoMaterno AS NombreCompleto,
    SUBSTRING(empApellidoPaterno, LEN(empApellidoPaterno), 1) +
    SUBSTRING(empApellidoMaterno, LEN(empApellidoMaterno) - 1, 2) +
    '-' + SUBSTRING(empNombres, 1, 3) + SUBSTRING(empNumSegSocial, 3, 1) +
    SUBSTRING(empNumSegSocial, 5, 1) AS CodigoGenerado
FROM tblEmpleado