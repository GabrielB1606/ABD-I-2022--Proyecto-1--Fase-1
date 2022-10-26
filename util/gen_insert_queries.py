import random
import math

evento_areas = [ 'Tecnologia', 'Derecho', 'Artes', 'Filosofia', 'Comunicacion', 'Salud' ]

n_universidades = 8
n_eventos = 3
n_usuarios = 600
n_empresas = 15

n_dictan = math.ceil(n_usuarios * 0.05)

# text that contains all the queries
txt = ""

# insert query template
insert_template = "insert into {} values({});\n"

# generate insert usuario queries
for i in range(n_usuarios):
    txt += insert_template.format( "usuario", ", ".join([ str(i), "'usuario"+str(i)+"@mail.com'", "'nombre"+str(i)+"'", "'apellido"+str(i)+"'", "'123'", "'calle"+str(i)+"'", "'04242675498'" ]) )

# generate insert universidad queries
txt += insert_template.format( "universidad", ", ".join([ "0", "'Universidad Central de Venezuela'", "'desc UCV'", "'01/10/2022'", "'UCV'" ]) )
for i in range(1, n_universidades):
    txt += insert_template.format( "universidad", ", ".join([ str(i), "'Universidad "+str(i)+"'", "'desc Universidad "+str(i)+"'", "'01/10/2022'", "'U"+str(i)+"'" ]) )

# generate insert evento queries
i = 0
txt += insert_template.format( "evento", ", ".join([ str(i), "0", "'Evento"+str(i)+"'", "'01/01/2022'", "'01/02/2022'", "'Tecnologia'" ] ) )
for i in range(1, n_eventos):
    txt += insert_template.format( "evento", ", ".join([ str(i), str(random.randint(0, n_universidades-1)), "'Evento"+str(i)+"'", "'01/01/2022'", "'01/02/2022'", "'"+evento_areas[ random.randint( 0, len(evento_areas)-1  ) ]+"'" ] ) )

# generate insert empresa queries
i=0
txt += insert_template.format( "empresa", ", ".join([ str(i), "'Empresa "+str(i)+"'", "'desc Empresa "+str(i)+"'", "'042411111'", "1" ]) )
for i in range(n_empresas):
    txt += insert_template.format( "empresa", ", ".join([ str(i), "'Empresa "+str(i)+"'", "'desc Empresa "+str(i)+"'", "'042411111'", str( random.randint(0,1) ) ]) )

# generate insert pertenece queries
for i in range(n_usuarios):
    txt += insert_template.format( "pertenece", ", ".join([ str(i), str(random.randint(0, n_universidades-1)), str(i),  "'01/02/2019'" ]) )

# generate insert dicta queries
for i in range(n_dictan):
    txt += insert_template.format( "dicta", ", ".join([ str(i), str(random.randint(0, n_eventos-1)), str(i), "'Charla "+str(i)+"'", str(random.randint(1, 5)), str(random.randint(1, 5)) ]) )

# generate insert participa queries
for i in range(n_dictan, n_usuarios):
    txt += insert_template.format( "participa", ", ".join([ str(i), str(random.randint(0, n_eventos-1)), str(i) ]) )

# generate insert participa queries
txt += insert_template.format( "patrocina", ", ".join([ "0", "0", "0", "1000", "'01/02/2020'" ]) )
pk = 1
for evento in range(n_eventos):
    for i in range(4):
        txt += insert_template.format( "patrocina", ", ".join([ str(pk), str(evento), str(random.randint(0, n_empresas-1)), "1000", "'01/02/20"+ str(random.randint(18,22)) +"'" ]) )
        pk += 1

f = open("../insert_py.sql", "w")
f.write(txt)
f.close()

# print(txt)