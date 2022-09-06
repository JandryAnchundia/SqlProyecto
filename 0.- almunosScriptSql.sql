----------- CODIGO DE CREACION DE TABLAS.

-- Eliminacion de la base de datos (para evitar errores)
drop database if exists alumnos;


-- Creacion de la base de datos
create database if not exists alumnos;


-- Utilizacion de la base de datos 
use alumnos;

-- ---------------------------------------
-- Creacion de tabla de Carrera
-- ---------------------------------------
create table if not exists carrera (
	id 				int 			not null auto_increment,
    nombreCarrera 	varchar(150) 	not null,
    duracionCarrera varchar(45)		not null,
    primary key (id)
    
    
) engine = innodb;




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




-- ---------------------------------------
-- Creacion de tabla de Becas
-- ---------------------------------------
create table if not exists becas (
	id 			int 			not null auto_increment,
    tipoBeca 	varchar(150) 	not null,
    primary key (id)
    
) engine = innodb;


-- ---------------------------------------
-- Creacion de tabla de Materia
-- ---------------------------------------
create table if not exists materia (
	id 				int 		not null 	auto_increment,
    nombreMateria 	varchar(60) not null, 
    creditosMateria varchar(40) not null,
    primary key (id)
    
) engine = innodb;


-- -------------------------------------------
-- Creacion de tabla intermedia de alumnoBecas
-- -------------------------------------------
create table if not exists alumnoBecas (
	id 				int 			not null auto_increment,
	idBecas			int 			not null,
	idAlumno		int 			not null,
	fechaInicio		date			not null,
    primary key (id),
    
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











-- ---------------------------------------
-- Creacion de tabla de Profesor
-- ---------------------------------------
create table if not exists profesor (

id			int 		 not null 	auto_increment, 
nombreProfesor	varchar(60)  not null, 
direccion	varchar(245) not null,
genero 		varchar(45)  not null,
telefono 	varchar(45)	 not null,
horario		varchar(60)  not null,
primary key (id)

) engine = innodb;


-- ---------------------------------------
-- Creacion de tabla de alumnoProfesor
-- ---------------------------------------
create table if not exists alumnoProfesor (
	id 				int 			not null auto_increment,
	idAlumno		int 			not null,
	idProfesor		int 			not null,
    primary key (id),
    
    
    
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








-- ---------------------------------------
-- Creacion de tabla de alumnoMateria
-- ---------------------------------------
create table if not exists alumnoMateria (
	id 					int 			not null auto_increment,
	idAlumno			int 			not null,
	idMateria			int 			not null,
    promedioParcial_1 	int 			not null,
    promedioParcial_2	int				not null,
    primary key (id),
    
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




























