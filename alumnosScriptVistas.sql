-- Utilizacion de la base de datos 
use alumnos;

-- ---------------------------------------
-- Creacion de vitas
-- ---------------------------------------
-- Vista sobre la carrera que sigue un alumno
create or replace view alumnoCarreras as 
select alumno.nombre, carrera.duracionCarrera, carrera.nombreCarrera
from alumno
inner join carrera on alumno.idCarrera = carrera.id;
select * from alumnoCarreras ;


-- Vista sobre informacion del alumno
create or replace view informacionAlumnos as 
select id, nombre, genero, edad from alumno;
select * from informacionAlumnos;


-- Vista sobre los alumnos que tienen becas
create or replace view informacionAlumnosBeca as 
select alumno.nombre, becas.tipoBeca 
from alumno, becas
inner join alumnobecas on alumnobecas.idBecas = alumnoBecas.idAlumno;
select * from informacionAlumnosBeca;




-- Vista sobre los profesores y los alumnos
create or replace view alumnoProfesor as
select nombre as nombreAlumno, nombreProfesor  
from alumno, profesor;
select * from alumnoProfesor;






