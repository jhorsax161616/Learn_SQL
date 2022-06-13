clases = ('CL001', 'CL002', 'CL003', 'CL004', 'CL005')
categoria = ('CA001','CA002','CA003','CA004','CA005')
email = ('@gmail.com', '@google.com', '@microsoft.com', '@ibm.com', '@yahoo.com')

from random import randint, uniform
from names import woman, men, proveedores
from address import addre
from medica import medicamentos
from rucs_para_pedidos import id_prov, id_asist, ids_transp

def generador_transportista():
    """Generando datos para tabla transportista

    Model:
        INSERT INTO tblTransportista VALUES('10421318879', 'Angela Cristina', 'Flores', 'Libia', 'Av. Ferrocarril 911', 'Femenino', '985122313', 'angelacris@ibm.com')
    """
    nombre :str = ""
    appaterno :str = ""
    apmaterno :str = ""
    genero :str = "Masculino"
    #Primer bucle para mujeres
    for i in range(25):
        #Generando ruc aleatorio
        ruc = randint(100000000, 999999999)
        
        #Identificando nombres y apellidos
        fullname = men[i].split()
        if len(fullname) == 3:
            nombre = fullname[0]
            appaterno = fullname[1]
            apmaterno = fullname[2]
        else:
            nombre = fullname[0] + " " + fullname[1]
            appaterno = fullname[2]
            apmaterno = fullname[3]
        
        #seleccionando direccion
        direccion :str = addre[25 + i]

        #Gemerando numero falso
        telefono = randint(10000000, 99999999)

        #Generando correo
        correo :str = nombre.lower().replace(' ', '') + appaterno[0:2].lower() + email[randint(0, 4)]


        query = f"INSERT INTO tblTransportista VALUES('10{ruc}', '{nombre}', '{appaterno}', '{apmaterno}', '{direccion}', '{genero}', '9{telefono}', '{correo}')"

        print(query)


def generador_asistente():
    """Generando datos para tabla asistente

    Model:
        INSERT INTO tblAsistente VALUES('10222111338', 'Joseph Lee', 'Leiva', 'Orga', 'Masculino', '911235526', 'edward123@gmail.com')
    """
    nombre :str = ""
    appaterno :str = ""
    apmaterno :str = ""
    genero :str = "Masculino"
    #Primer bucle para mujeres
    for i in range(25, 50):
        #Generando ruc aleatorio
        ruc = randint(100000000, 999999999)
        
        #Identificando nombres y apellidos
        fullname = men[i].split()
        if len(fullname) == 3:
            nombre = fullname[0]
            appaterno = fullname[1]
            apmaterno = fullname[2]
        else:
            nombre = fullname[0] + " " + fullname[1]
            appaterno = fullname[2]
            apmaterno = fullname[3]

        #Gemerando numero falso
        telefono = randint(10000000, 99999999)

        #Generando correo
        correo :str = nombre.lower().replace(' ', '') + appaterno[0:2].lower() + email[randint(0, 4)]

        query = f"INSERT INTO tblAsistente VALUES('10{ruc}', '{nombre}', '{appaterno}', '{apmaterno}', '{genero}', '9{telefono}', '{correo}')"

        print(query)

def generator_proveedores():
    """Generando datos para tabla proveedor

    Model:
        INSERT INTO tblProveedor VALUES('20154789652', 'Bayer S.A.', 'Av. Calmell del Solar. Arg', '922233456', 'beyer@gmail.com')
    """

    for i in range(20):
        #Generando ruc aleatorio
        ruc = randint(100000000, 999999999)

        nombre = proveedores[i]

        direccion = addre[50 + i]

        telefono = randint(10000000, 99999999)

        correo :str = nombre[:7].lower().replace(' ', '') + email[randint(0, 4)]

        query = f"INSERT INTO tblProveedor VALUES('20{ruc}', '{nombre}', '{direccion}', '9{telefono}', '{correo}')"

        print(query)

def generator_medicamentos():
    """Generando datos para tabla medicamento

    Model:
         INSERT INTO tblMedicamento VALUES('MED0001', 'Paracetamol', 355, 'CA001')
    """

    for i in range(100):
        #asignando codigos
        idmedicamento = "MED0"
        cod = str(5 + i)
        if len(cod) == 1:
            idmedicamento += "00" + cod
        elif len(cod) == 2:
            idmedicamento += "0" + cod
        else:
            idmedicamento += cod

        nombre = medicamentos[i][2]
        cantidad = randint(0, 500)
        catego = categoria[randint(0, 4)]

        query = f"INSERT INTO tblMedicamento VALUES('{idmedicamento}', '{nombre}', {cantidad}, '{catego}')"

        print(query)

def generator_pedidos():
    """Generando datos para tabla pedido

    Model:
         INSERT INTO tblPedido VALUES('PED00001', 12000.50, 2160.09, '2022-12-30', '2022-11-20', '10421318879', '20147895436', '10122355877')
    """

    for i in range(30):
        #Asignando idpedido
        idpedido = "PED000"
        cod = str(6 + i)
        if len(cod) == 1:
            idpedido += "0" + cod
        else:
            idpedido += cod

        precio :float = round(uniform(50, 10000), 2)

        igv = round(0.18 * precio, 2)

        #Generando fechas
        anio = randint(2009, 2021)
        mes = randint(1, 12)
        if mes == 2:
            dia = randint(1, 28)
        elif mes in [1, 3, 5, 7, 8, 10, 12]:
            dia = randint(1, 31)
        else:
            dia = randint(1, 30)
        
        idtran = ids_transp[randint(0, 54)][0]
        idpro = id_prov[randint(0, 24)][0]
        idasi = id_asist[randint(0, 54)][0]

        query = f"INSERT INTO tblPedido VALUES('{idpedido}', {precio}, {igv}, '{anio}-{mes}-{dia}', '', '{idtran}', '{idpro}', '{idasi}')"

        print(query)


if __name__=='__main__':
    generator_pedidos()