-- CODIGO CON MEJOR PERFORMANCE E INSERSION DE DATOS. CORRECCIONES AÑADIDAS Y TABULACIONES.

-- Eliminacion de la base de datos (para evitar errores)
drop database if exists alumno;


-- Creacion de la base de datos
create database if not exists alumno;


-- Utilizacion de la base de datos 
use alumno;


-- Creacion de tabla de Carrera
create table if not exists carrera (
	id 				int 			not null auto_increment,
    nombreCarrera 	varchar(150) 	not null,
    duracionCarrera varchar(45)		not null,
    primary key (id)
    
    
) engine = innodb;

-- INSERSION DE DATOS EN LA TABLA DE CARRERA
insert into carrera (id, nombreCarrera, duracionCarrera) values (1, 'Ingeniería en sistemas', '5 años');
insert into carrera (id, nombreCarrera, duracionCarrera) values (2, 'Ciencias Agropecuarias', '4 años');
insert into carrera (id, nombreCarrera, duracionCarrera) values (3, 'Ingeniería en Telecomunicaciones', '5 años');
select * from carrera;



create table if not exists alumno (

id			int 		not null 	auto_increment, 
nombre		varchar(60) not null, 
edad 		int 		not null,
semestre	varchar(45) not null,
genero 		varchar(45) not null,
idCarrera 	int 		not null,
primary key (id),

constraint fkAlumnoCarrera
		foreign key (idCarrera)
		references carrera (id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
		
        
) ENGINE = InnoDB;

-- INSERSION DE DATOS EN LA TABLA DE ALUMNOS

insert into alumno (id, nombre, edad, semestre, genero, idCarrera  ) values (0, 'Jandry Anchundia', 23, 'DECIMO', 'MASCULINO', 1);
insert into alumno (id, nombre, edad, semestre, genero, idCarrera  ) values (0, 'Jhon Rosado', 23, 'DECIMO', 'MASCULINO', 1);
insert into alumno (id, nombre, edad, semestre, genero, idCarrera  ) values (0, 'Jose Rolando', 23, 'DECIMO', 'MASCULINO', 1);
insert into alumno (id, nombre, edad, semestre, genero, idCarrera  ) values (0, 'Ben Mell', 23, 'DECIMO', 'MASCULINO', 1);
insert into alumno (id, nombre, edad, semestre, genero, idCarrera  ) values (0, 'Jose David', 23, 'DECIMO', 'MASCULINO', 1);
insert into alumno (id, nombre, edad, semestre, genero, idCarrera  ) values (0, 'Emanuel Delgado', 23, 'DECIMO', 'MASCULINO', 1);
insert into alumno (id, nombre, edad, semestre, genero, idCarrera  ) values (0, 'Jhon Rosado', 23, 'DECIMO', 'MASCULINO', 2);
insert into alumno (id, nombre, edad, semestre, genero, idCarrera  ) values (0, 'Robert Rosado', 23, 'DECIMO', 'MASCULINO', 1);
insert into alumno (id, nombre, edad, semestre, genero, idCarrera  ) values (0, 'Orlando Rosado', 23, 'DECIMO', 'MASCULINO', 3);
insert into alumno (id, nombre, edad, semestre, genero, idCarrera  ) values (0, 'Emanuel Delgado', 23, 'DECIMO', 'MASCULINO', 1);
insert into alumno (id, nombre, edad, semestre, genero, idCarrera  ) values (0, 'Jhon Rosado', 23, 'DECIMO', 'MASCULINO', 2);
insert into alumno (id, nombre, edad, semestre, genero, idCarrera  ) values (0, 'Robert Rosado', 23, 'DECIMO', 'MASCULINO', 2);
insert into alumno (id, nombre, edad, semestre, genero, idCarrera  ) values (0, 'Orlando Rosado', 23, 'DECIMO', 'MASCULINO', 2);
select * from alumno;



-- Creacion de tabla de Becas
create table if not exists becas (
	id 			int 			not null auto_increment,
    tipoBeca 	varchar(150) 	not null,
    primary key (id)
    
) engine = innodb;


insert into becas (id, tipoBeca) values (1, 'SOCIOECONIMICA');
insert into becas (id, tipoBeca) values (2, 'ALUMNO DESTACADO');
insert into becas (id, tipoBeca) values (3, 'TRANSPORTE');

SELECT * FROM BECAS;



-- Creacion de tabla de Materia

create table if not exists materia (
	id 				int 		not null 	auto_increment,
    nombreMateria 	varchar(60) not null, 
    creditosMateria varchar(40) not null,
    primary key (id)
    
) engine = innodb;

-- INSERSION DE DATOS EN LA TABLA DE MATERIA
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'BASE DE DATOS', '4%');
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'BASE DE DATOS', '4%');
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'BASE DE DATOS', '4%');
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'BASE DE DATOS', '4%');
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'BASE DE DATOS', '4%');
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'BASE DE DATOS', '4%');
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'BASE DE DATOS', '4%');
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'BASE DE DATOS', '4%');
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'BASE DE DATOS', '4%');
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'BASE DE DATOS', '4%');

SELECT * FROM MATERIA;






-- Creacion de tabla intermedia de alumnoBecas

create table if not exists alumnoBecas (
	idBecas			int 			not null,
	idAlumno		int 			not null,
    
	constraint fkAlumnoBecasBecas
		foreign key (idBecas)
        references becas (id)
        on delete no action
        on update no action,
        
	constraint fkAlumnoBecasAlumno
		foreign key (idAlumno)
        references alumno (id)
        on delete no action
        on update no action
    
) engine = innodb;



-- Creacion de tabla de Profesor

create table if not exists profesor (

id			int 		 not null 	auto_increment, 
nombre		varchar(60)  not null, 
direccion	varchar(245) not null,
genero 		varchar(45)  not null,
telefono 	varchar(45)	 not null,
horario		varchar(60)  not null,
primary key (id)

) engine = innodb;


-- INSERSION DE DATOS EN LA TABLA DE PROFESOR
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombre, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');





-- Creacion de tabla de alumnoProfesor

create table if not exists alumnoProfesor (
	idAlumno		int 			not null,
	idProfesor		int 			not null,
    
    
    
    constraint fkAlumnoProfesorAlumno
		foreign key (idAlumno)
        references alumno (id)
        on delete no action
        on update no action,
        
	constraint fkAlumnoProfesorProfesor
		foreign key (idProfesor)
        references profesor (id)
        on delete no action
        on update no action
) engine = innodb;







SELECT *FROM ALUMNO;

-- Creacion de tabla de alumnoMateria
create table if not exists alumnoMateria (
	idAlumno		int 			not null,
	idMateria		int 			not null,
    
     constraint fkAlumnoMateriaAlumno
		foreign key (idAlumno)
        references alumno (id)
        on delete no action
        on update no action,
        
	constraint fkAlumnoMateriaMateria
		foreign key (idMateria)
        references materia (id)
        on delete no action
        on update no action
    
) engine = innodb;



SELECT * FROM ALUMNO;

























