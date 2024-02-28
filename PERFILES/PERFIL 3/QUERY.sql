DROP DATABASE IF EXIST ;
CREATE DATABASE ;
USE ;

/*
CREATE TABLE ejemplo_uuid (
    id CHAR(36) PRIMARY KEY,
    nombre VARCHAR(255)
);
INSERT INTO ejemplo_uuid (id, nombre) VALUES (UUID(), 'Ejemplo');
INSERT INTO ejemplo_uuid (id, nombre) VALUES ('f47ac10b-58cc-4372-a567-0e02b2c3d479', 'Otro Ejemplo');
SELECT * FROM ejemplo_uuid;

DELIMITER //
CREATE TRIGGER actualizar_fecha_modificacion
BEFORE UPDATE ON ejemplo
FOR EACH ROW
BEGIN
    SET NEW.fecha_modificacion = NOW();
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE contar_registros()
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM ejemplo;
    SELECT total;
END//
DELIMITER ;

DELIMITER //
CREATE FUNCTION calcular_area_circulo(radio FLOAT)
RETURNS FLOAT
BEGIN
    DECLARE area FLOAT;
    SET area = PI() * radio * radio;
    RETURN area;
END//
DELIMITER ;
*/

CREATE TABLE(
    ID INT PRIMARY KEY,
    CONSTRAINT fk_comentario_detalle
    FOREIGN KEY (id_detalle) REFERENCES prc_detalle_pedidos(id_detalle)
    ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO () VALUES(UUID(),);

