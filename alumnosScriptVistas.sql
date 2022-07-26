-- Utilizacion de la base de datos 
use alumnos;

-- ---------------------------------------
-- Creacion de vitas
-- ---------------------------------------
-- Vista sobre todas las materias que cursa un alumno
create view alumnoMaterias as 
select nombreMateria from materia;
select * from alumnoMaterias ;

-- Vista sobre el nombre y la carrera que cursa el alumno 
create view carreraAlumnos as 
select nombre, semestre, nombreCarrera from alumno, carrera;
select * from carreraAlumnos;

-- Vista sobre informacion del alumno
create view informacionAlumnos as 
select id, nombre, genero, edad from alumno;
select * from informacionAlumnos;

-- Vista sobre los alumnos que tienen becas
create view informacionAlumnosBecas as 
select nombre, tipoBeca, nombreCarrera from alumno, becas, carrera;
select * from informacionAlumnosBecas;

-- Vista sobre los profesores y los alumnos
create view alumnoProfesor as
select nombre as nombreAlumno, nombreProfesor  from alumno, profesor;
select * from alumnoProfesor;






