import random
import math
import sys

# Generar instrucción de SQL para insertar registro en la tabla table con los valores values
def generate_insert(table, values):
    return "insert into {} values({});\n".format(table, ", ".join(values) )

# Posibles areas de eventos
evento_areas = [ 'Tecnologia', 'Derecho', 'Artes', 'Filosofia', 'Comunicacion', 'Salud' ]

# main
if __name__ == "__main__":
    
    n_eventos = 3
    n_universidades = 8

    if len(sys.argv) >1:
        n_eventos = int(sys.argv[1])

    n_usuarios = 200*n_eventos
    n_empresas = 5*n_eventos
    n_dictan = math.ceil(n_usuarios * 0.05)

    # Texto con todos los queries
    txt = ""

    # generate insert usuario queries
    for i in range(n_usuarios):
        txt += generate_insert("usuario", [ str(i), "'usuario"+str(i)+"@mail.com'", "'nombre"+str(i)+"'", "'apellido"+str(i)+"'", "'123'", "'calle"+str(i)+"'", "'04242675498'" ])

    # generate insert universidad queries
    txt += generate_insert("universidad", [ "0", "'Universidad Central de Venezuela'", "'desc UCV'", "'01/10/2022'", "'UCV'" ] )
    for i in range(1, n_universidades):
        txt += generate_insert("universidad", [ str(i), "'Universidad "+str(i)+"'", "'desc Universidad "+str(i)+"'", "'01/10/2022'", "'U"+str(i)+"'"] )

    # generate insert evento queries
    txt += generate_insert("evento", [ "0", "0", "'Evento 0'", "'01/01/2022'", "'01/02/2022'", "'Tecnologia'" ])
    for i in range(1, n_eventos):
        txt += generate_insert("evento", [ str(i), str(random.randint(0, n_universidades-1)), "'Evento "+str(i)+"'", "'01/01/2022'", "'01/02/2022'", "'"+evento_areas[ random.randint( 0, len(evento_areas)-1  ) ]+"'" ])

    # generate insert empresa queries
    txt += generate_insert("empresa",[ "0", "'Empresa 0'", "'desc Empresa 0'", "'042411111'", "1" ] )
    for i in range(1, n_empresas):
        txt += generate_insert("empresa", [ str(i), "'Empresa "+str(i)+"'", "'desc Empresa "+str(i)+"'", "'042411111'", str( random.randint(0,1) ) ] )

    # generate insert pertenece queries
    for i in range(n_usuarios):
        txt += generate_insert("pertenece", [ str(i), str(random.randint(0, n_universidades-1)), str(i),  "'01/02/2019'" ] )

    # generate insert dicta queries
    for i in range(n_dictan):
        txt += generate_insert("dicta", [ str(i), str(random.randint(0, n_eventos-1)), str(i), "'Charla "+str(i)+"'", str(random.randint(1, 5)), str(random.randint(1, 5)) ] )

    # generate insert participa queries
    for i in range(n_dictan, n_usuarios):
        txt += generate_insert("participa",[ str(i), str(random.randint(0, n_eventos-1)), str(i) ] )

    # generate insert participa queries
    txt += generate_insert("patrocina", [ "0", "0", "0", "1000", "'01/02/2020'" ] )
    pk = 1
    for evento in range(n_eventos):
        for i in range(4):
            txt += generate_insert("patrocina", [ str(pk), str(evento), str(random.randint(0, n_empresas-1)), "1000", "'01/02/20"+ str(random.randint(18,22)) +"'" ] )
            pk += 1

    # escribir instrucciones SQL en insert_py.sql
    f = open("../insert_py.sql", "w")
    f.write(txt)
    f.close()