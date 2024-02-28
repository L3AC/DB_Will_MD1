USE libro_express;

/*TRIGGER*/
DELIMITER //
CREATE TRIGGER actualizar_estado_libro
AFTER INSERT ON tb_detalles_prestamos
FOR EACH ROW
BEGIN
    UPDATE tb_libros
    SET estado = 'Prestado'
    WHERE id_libro = NEW.id_libro;
END //
DELIMITER ;

/*TB_CLIENTES*/
DELIMITER //

CREATE PROCEDURE InsertarCliente(
  IN p_nombre_cliente VARCHAR(50),
  IN p_email_cliente VARCHAR(100),
  IN p_telefono VARCHAR(10)
)
BEGIN
  INSERT INTO tb_clientes (id_cliente, nombre_cliente, email_cliente, telefono)
  VALUES (UUID(), p_nombre_cliente, p_email_cliente, p_telefono);
END //

DELIMITER ;

/*TB_PRESTAMOS*/
DELIMITER //

CREATE PROCEDURE InsertarPrestamo(
  IN p_id_cliente VARCHAR(255),
  IN p_fecha_inicio DATE,
  IN p_fecha_devolucion DATE,
  IN p_estado ENUM('Activo', 'Inactivo')
)
BEGIN
  INSERT INTO tb_prestamos (id_prestamo, id_cliente, fecha_inicio, fecha_devolucion, estado)
  VALUES (UUID(), p_id_cliente, p_fecha_inicio, p_fecha_devolucion, p_estado);
END //

DELIMITER ;

/*TB_GENERO_LIBROS*/
DELIMITER //

CREATE PROCEDURE InsertarGeneroLibro(
  IN p_nombre_genero_libro VARCHAR(50)
)
BEGIN
  INSERT INTO tb_generos_libros (id_genero_libro, nombre_genero_libro)
  VALUES (UUID(), p_nombre_genero_libro);
END //

DELIMITER ;

/*TB_LIBROS*/
DELIMITER //

CREATE PROCEDURE InsertarLibro(
  IN p_titulo_libro VARCHAR(50),
  IN p_anio_publicacion INT,
  IN p_id_genero_libro VARCHAR(255),
  IN p_estado ENUM('Disponible', 'Prestado')
)
BEGIN
  INSERT INTO tb_libros (id_libro, titulo_libro, anio_publicacion, id_genero_libro, estado)
  VALUES (UUID(), p_titulo_libro, p_anio_publicacion, p_id_genero_libro, p_estado);
END //

DELIMITER ;

/*TB_DETALLE_PRESTAMO*/
DELIMITER //

CREATE PROCEDURE InsertarDetallePrestamo(
  IN p_id_prestamo VARCHAR(255),
  IN p_id_libro VARCHAR(255)
)
BEGIN
  INSERT INTO tb_detalles_prestamos (id_detalle_prestamo, id_prestamo, id_libro)
  VALUES (UUID(), p_id_prestamo, p_id_libro);
END //

DELIMITER ;
