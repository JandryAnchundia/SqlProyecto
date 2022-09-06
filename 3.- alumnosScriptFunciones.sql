-- Funcion que ayude a concer cuantos alumnos hay con determinada letra 
drop function if exists fn_numeroLetras; 
delimiter $$
use alumnos $$
create function fn_numeroLetras (letra char) returns int
no sql
begin
	declare numero int;
	select count(*) into numero 
    from alumno 
    where nombre like concat('%',letra,'%');
	return numero;
end$$
delimiter $$;

select * from alumno;
select alumnos.fn_numeroLetras('a');


-- Funcion que perimite calcular el promedio de los 2 parciales de los alumnos
drop function if exists fn_calcularPromedioParciales; 
delimiter $$
use alumnos $$
create function fn_calcularPromedioParciales (p_parcial1 int, p_parcial2 int) returns float 
no sql
begin 
declare resultado float;
set resultado = (p_parcial1 + p_parcial2) / 2;
return resultado;
end$$
delimiter $$;

select alumnos.fn_calcularPromedioParciales(7, 7);


