-- Este Script permite la actualizacion de los alumnos
use alumnos;
create procedure actualizaAlumnos(nombreNuevo varchar(60), edadNueva int, idAlumno int )
update alumno set  nombre = nombreNuevo, edad = edadNueva where id = idAlumno;

call alumnos.actualizaAlumnos('Jose Juaquin', 200, 1);
select * from alumno;

#PS 2: Permite al usuario seleccionar la columna por la que quiere realizar el ordenamiento, el orden (ASCENDENTE O DESCENDENTE) y finalmente la tabla que desea consultar.
DELIMITER $$
CREATE PROCEDURE ordenamientoTablas(IN campo VARCHAR(255), IN tipo_ordenamiento ENUM('ASC','DESC'), IN tabla VARCHAR(255))
BEGIN
	IF campo <> '' THEN
		SET @ordenar = CONCAT(' ORDER BY ', campo);
    ELSE
		SET @ordenar = '';
	END IF;
    IF tipo_ordenamiento <> '' THEN
		SET @tipo = CONCAT(' ', tipo_ordenamiento);
	ELSE
        SET @tipo = '';
	END IF;
	SET @clausula = CONCAT('SELECT * FROM ',Tabla,@ordenar, @tipo);
	PREPARE ejecutarSQL FROM @clausula;
    EXECUTE ejecutarSQL;
    DEALLOCATE PREPARE ejecutarSQL;
END;
DELIMITER$$

call alumnos.ordenamientoTablas('nombre', 'desc', 'alumno');

	





