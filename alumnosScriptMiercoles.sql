#Eliminar registros y recuperarlos

START TRANSACTION;
	DELETE FROM alumnos.alumnomateria WHERE idMateria = 1;
    DELETE FROM alumnos.alumnomateria WHERE idMateria  = 2;
	DELETE FROM alumnos.alumnomateria WHERE idMateria  = 3;
	DELETE FROM alumnos.alumnomateria WHERE idMateria  = 4;
	DELETE FROM alumnos.alumnomateria WHERE idMateria  = 5;


#Para deshacer las eliminaciones ejecuto:
ROLLBACK;

#Eliminar registros definitivamente

START TRANSACTION;
	DELETE FROM alumnos.alumnobecas WHERE idAlumno = 1;
    DELETE FROM alumnos.alumnobecas WHERE idAlumno = 2;
	DELETE FROM alumnos.alumnobecas WHERE idAlumno = 3;
	DELETE FROM alumnos.alumnobecas WHERE idAlumno = 4;
	DELETE FROM alumnos.alumnobecas WHERE idAlumno = 5;
#Para confirmar definitivamente las eliminaciones ejecuto:
COMMIT;



#Inserción de 8 nuevos registros con savepoint
START TRANSACTION;
	INSERT INTO alumnos.alumnomateria (`id`,`idAlumno`,`idMateria`,`promedioParcial_1`,`promedioParcial_2`) 
    VALUES ('0','1','2',10,10);
    INSERT INTO alumnos.alumnomateria (`id`,`idAlumno`,`idMateria`,`promedioParcial_1`,`promedioParcial_2`) 
    VALUES ('0','2','2',10,10);
    INSERT INTO alumnos.alumnomateria (`id`,`idAlumno`,`idMateria`,`promedioParcial_1`,`promedioParcial_2`) 
    VALUES ('0','3','2',10,10);
    INSERT INTO alumnos.alumnomateria (`id`,`idAlumno`,`idMateria`,`promedioParcial_1`,`promedioParcial_2`) 
    VALUES ('0','4','2',10,10);
	
SAVEPOINT CuatroRegistros;
	INSERT INTO alumnos.alumnobecas (`id`,`idBecas`,`idAlumno`,`fechaInicio`) 
    VALUES (0,1,2,'2020-12-20');
    INSERT INTO alumnos.alumnobecas (`id`,`idBecas`,`idAlumno`,`fechaInicio`) 
    VALUES (0,1,2,'2020-12-20');
    INSERT INTO alumnos.alumnobecas (`id`,`idBecas`,`idAlumno`,`fechaInicio`) 
    VALUES (0,1,2,'2020-12-20');
    INSERT INTO alumnos.alumnobecas (`id`,`idBecas`,`idAlumno`,`fechaInicio`) 
    VALUES (0,1,2,'2020-12-20');
    INSERT INTO alumnos.alumnobecas (`id`,`idBecas`,`idAlumno`,`fechaInicio`) 
    VALUES (0,1,2,'2020-12-20');
    INSERT INTO alumnos.alumnobecas (`id`,`idBecas`,`idAlumno`,`fechaInicio`) 
    VALUES (0,1,2,'2020-12-20');
    INSERT INTO alumnos.alumnobecas (`id`,`idBecas`,`idAlumno`,`fechaInicio`) 
    VALUES (0,1,2,'2020-12-20');
    INSERT INTO alumnos.alumnobecas (`id`,`idBecas`,`idAlumno`,`fechaInicio`) 
    VALUES (0,1,2,'2020-12-20');

SAVEPOINT OchoRegistros;

#Eliminar savepoint:

# RELEASE SAVEPOINT CuatroRegistros;



