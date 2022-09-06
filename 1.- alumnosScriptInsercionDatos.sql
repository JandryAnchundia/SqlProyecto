-- INSERSION DE DATOS EN LA TABLA DE CARRERA
insert into carrera (id, nombreCarrera, duracionCarrera) values (1, 'Ingeniería en sistemas', '5 años');
insert into carrera (id, nombreCarrera, duracionCarrera) values (2, 'Ciencias Agropecuarias', '4 años');
insert into carrera (id, nombreCarrera, duracionCarrera) values (3, 'Ingeniería en Telecomunicaciones', '5 años');


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

-- INSERSION DE DATOS EN LA TABLA DE BECAS
insert into becas (id, tipoBeca) values (1, 'SOCIOECONIMICA');
insert into becas (id, tipoBeca) values (2, 'ALUMNO DESTACADO');
insert into becas (id, tipoBeca) values (3, 'TRANSPORTE');


-- INSERSION DE DATOS EN LA TABLA DE MATERIA
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'BASE DE DATOS', '20%');
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'TEORIA DE CONJUNTOS', '20%');
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'METAFISICA', '20%');
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'ALGEBRA LINEAL', '20%');
insert into materia (id,  nombreMateria, creditosMateria  ) values (0, 'CALCULO', '20%');


-- INSERSION DE DATOS SOBRE EL TIEMPO EN QUE LLEVA SIENDO BENEFICARIO DE LA BECA
insert into alumnoBecas (id, idBecas, idAlumno, fechaInicio	) values(0, 1, 1, '2019-12-31');
insert into alumnoBecas (id, idBecas, idAlumno, fechaInicio	) values(0, 1, 2, '2019-12-31');
insert into alumnoBecas (id, idBecas, idAlumno, fechaInicio	) values(0, 1, 3, '2019-12-31');
insert into alumnoBecas (id, idBecas, idAlumno, fechaInicio	) values(0, 1, 3, '2019-12-31');
insert into alumnoBecas (id, idBecas, idAlumno, fechaInicio	) values(0, 2, 4, '2019-12-31');
insert into alumnoBecas (id, idBecas, idAlumno, fechaInicio	) values(0, 3, 5, '2019-12-31');
insert into alumnoBecas (id, idBecas, idAlumno, fechaInicio	) values(0, 2, 6, '2019-12-31');
insert into alumnoBecas (id, idBecas, idAlumno, fechaInicio	) values(0, 1, 7, '2019-12-31');

use alumnos;
-- INSERSION DE DATOS EN LA TABLA DE PROFESOR
insert into profesor (id, nombreProfesor, direccion, genero, telefono, horario  ) values (0, 'ELMER Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombreProfesor, direccion, genero, telefono, horario  ) values (0, 'DAVID Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombreProfesor, direccion, genero, telefono, horario  ) values (0, 'JOSE Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombreProfesor, direccion, genero, telefono, horario  ) values (0, 'MIGUEL Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombreProfesor, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombreProfesor, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombreProfesor, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');
insert into profesor (id, nombreProfesor, direccion, genero, telefono, horario  ) values (0, 'Jandry Anchundia', '9 de Octubre', 'MASCULINO', '096949494', 'DE 7AM A 1PM');

-- INSERSION DE DATOS EN LA TABLA DE ALUMNOMATRIA
insert into alumnoMateria (id, idAlumno, idMateria, promedioParcial_1, promedioParcial_2) values(0, 2, 3, 3, 9);
insert into alumnoMateria (id, idAlumno, idMateria, promedioParcial_1, promedioParcial_2) values(0, 1, 1, 7, 9);
insert into alumnoMateria (id, idAlumno, idMateria, promedioParcial_1, promedioParcial_2) values(0, 3, 1, 7, 9);
insert into alumnoMateria (id, idAlumno, idMateria, promedioParcial_1, promedioParcial_2) values(0, 1, 3, 2, 9);
insert into alumnoMateria (id, idAlumno, idMateria, promedioParcial_1, promedioParcial_2) values(0, 2, 3, 7, 9);

-- INSERSION DE DATOS EN LA TABLA DE ALUMNOPROFESOR
insert into alumnoProfesor (id, idAlumno, idProfesor) values(0, 2, 3);
insert into alumnoProfesor(id, idAlumno, idProfesor) values(0, 3, 2);
insert into alumnoProfesor (id, idAlumno, idProfesor) values(0, 1, 1);
insert into alumnoProfesor (id, idAlumno, idProfesor) values(0, 2, 1);





