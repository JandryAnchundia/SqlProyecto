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
select alumno.nombre, becas.tipoBeca, alumnobecas.fechaInicio
from alumnobecas
inner join alumno on alumnobecas.id = alumno.id
inner join becas  on alumnobecas.id = becas.id;

select * from informacionAlumnosBeca;


-- vista de las materias 

create or replace view informacionMateria as
select nombreMateria, creditosMateria
from materia;
select * from  informacionMateria;


-- Vista sobre los profesores y los alumnos
create or replace view alumnosProfesor as
select alumno.nombre, profesor.nombreProfesor
from alumnoprofesor
inner join alumno on alumnoprofesor.id= alumno.id
inner join profesor on alumnoprofesor.id = profesor.id;




















