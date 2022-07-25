/* 3. Añada el DNI de cliente 25836941 a la tabla temp_tblCliente.
El nombre es Alan Infante Vidalón, sexo masculino, distrito de
El Tambo y email  ainfante@continental.edu.pe */

SELECT * FROM temp_tblCliente WHERE DNI = '25836941'

INSERT INTO temp_tblCliente
VALUES('25836941', 'Infante', 'Vidalón', 'Alan', 'Masculino', 'El Tambo',
        'ainfante@continental.edu.pe')

SELECT * FROM temp_tblCliente WHERE DNI = '25836941'