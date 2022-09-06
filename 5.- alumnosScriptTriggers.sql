#TRIGGER 1: Este trigger genera un registro luego de que se insertan datos correspondientes a la tabla 

CREATE TABLE IF NOT EXISTS Auditoria_Alumno(
											id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
                                            fecha DATETIME NOT NULL,
                                            usuario VARCHAR(255));
                                                                                    

CREATE TRIGGER `Aft_Ins_Alumno`AFTER INSERT ON `alumno` FOR EACH ROW
INSERT INTO `Auditoria_Alumno` (fecha, usuario)
VALUES (NOW(),  USER(),  'INSERT');


#TRIGGER 2: El siguiente trigger guarda en una tabla "auditoria_becas" las nuevas becas que se ingresen al sistema, guardando también la fecha y usuario encargado

CREATE TABLE IF NOT EXISTS Auditoria_Becas(
										ID_Beca INT auto_increment primary key,
                                        NombreBeca VARCHAR(255) NOT NULL,
                                        Fecha DATETIME NOT NULL,
                                        Usuario VARCHAR(255));
                                        
CREATE TRIGGER `Bef_Ins_Beca`
BEFORE INSERT ON `becas` FOR EACH ROW
INSERT INTO `Auditoria_Becas` (ID_Beca, NombreBeca)
VALUES (NEW.tipoBeca, NOW(), USER(), 'Insert');








