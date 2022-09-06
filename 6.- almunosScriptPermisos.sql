USE mysql;
SELECT * FROM USER;

#Creación de los usuarios

CREATE USER Usuario1@localhost IDENTIFIED BY 'Test2021';
CREATE USER Usuario2@localhost IDENTIFIED BY 'Test2022';

#Otorgar permisos de solo lectura a todas las tablas al Usuario1:

GRANT SELECT ON *.* TO Usuario1@localhost;

#Otorgar permisos de lectura, inserción y modificación a todas las tablas al Usuario2:

GRANT SELECT, INSERT, UPDATE ON *.* TO Usuario2@localhost;

#Aseguramos que ambos usuarios no pueden eliminar registros:

REVOKE DELETE ON *.* FROM Usuario1@localhost, Usuario2@localhos;

SELECT * FROM USER;
