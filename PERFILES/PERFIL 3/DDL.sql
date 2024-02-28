-- Los insert de todas las tablas se deben de realizar utilizando un procedimiento almacenado.
 
/* Proceso de almacenamiento de la tabla clientes*/
DELIMITER //
 
CREATE PROCEDURE AgregarCliente(nombre_cliente VARCHAR(50), email_cliente VARCHAR(100), telefono VARCHAR(10))
BEGIN
 
    INSERT INTO tb_clientes(nombre_cliente, email_cliente, telefono) VALUES (nombre_cliente, email_cliente, telefono);
 
END //
 
DELIMITER ;
 
CALL AgregarCliente ('Juan', 'Juan3094128@gmail.com', '7773-1234');
CALL AgregarCliente('Pedro', 'pedro@gmail.com', '555-1234');
CALL AgregarCliente('María', 'maria@gmail.com', '555-5678');
CALL AgregarCliente('Carlos', 'carlos@gmail.com', '555-9012');
CALL AgregarCliente('Ana', 'ana@gmail.com', '555-4321');
CALL AgregarCliente('Miguel', 'miguel@gmail.com', '555-8765');
CALL AgregarCliente('Laura', 'laura@gmail.com', '555-0987');
CALL AgregarCliente('Roberto', 'roberto@gmail.com', '555-1111');
CALL AgregarCliente('Sofía', 'sofia@gmail.com', '555-2222');
CALL AgregarCliente('Alejandro', 'alejandro@gmail.com', '555-3333');
CALL AgregarCliente('Isabel', 'isabel@gmail.com', '555-4444');
CALL AgregarCliente('Gabriel', 'gabriel@gmail.com', '555-5555');
CALL AgregarCliente('Lucía', 'lucia@gmail.com', '555-6666');
CALL AgregarCliente('Luisa', 'luisa@gmail.com', '555-7777');
CALL AgregarCliente('Martín', 'martin@gmail.com', '555-8888');
 
SELECT * FROM tb_clientes
 
 
 
/* Proceso de almacenamiento de la tabla prestamos*/
DELIMITER //
 
CREATE PROCEDURE AgregarPrestamo(nombreCliente VARCHAR(50), fecha_inicio DATE, fecha_devolucion DATE, estado ENUM('Activo','Inactivo'))
BEGIN
    DECLARE cliente_id BINARY(36);
    -- Encierra la consulta SELECT entre paréntesis
    SET cliente_id = (SELECT id_cliente FROM tb_clientes WHERE nombre_cliente = nombreCliente);
    INSERT INTO tb_prestamos(id_cliente, fecha_inicio, fecha_devolucion, estado) VALUES (cliente_id, fecha_inicio, fecha_devolucion, estado);
END //
 
DELIMITER ;
 
CALL AgregarPrestamo ('Juan', '2024-02-28', '2024-03-05', 'Activo');
CALL AgregarPrestamo('Pedro', '2024-03-01', '2024-03-15', 'Activo');
CALL AgregarPrestamo('María', '2024-02-28', '2024-03-10', 'Inactivo');
CALL AgregarPrestamo('Carlos', '2024-03-05', '2024-03-20', 'Activo');
CALL AgregarPrestamo('Ana', '2024-03-10', '2024-03-25', 'Activo');
CALL AgregarPrestamo('Miguel', '2024-03-05', '2024-03-15', 'Inactivo');
CALL AgregarPrestamo('Laura', '2024-03-15', '2024-03-30', 'Activo');
CALL AgregarPrestamo('Roberto', '2024-03-20', '2024-04-05', 'Activo');
CALL AgregarPrestamo('Sofía', '2024-04-01', '2024-04-15', 'Inactivo');
CALL AgregarPrestamo('Alejandro', '2024-03-25', '2024-04-10', 'Activo');
CALL AgregarPrestamo('Isabel', '2024-04-10', '2024-04-25', 'Activo');
CALL AgregarPrestamo('Gabriel', '2024-04-05', '2024-04-15', 'Inactivo');
CALL AgregarPrestamo('Lucía', '2024-04-15', '2024-04-30', 'Activo');
CALL AgregarPrestamo('Luisa', '2024-05-01', '2024-05-15', 'Activo');
CALL AgregarPrestamo('Martín', '2024-05-10', '2024-05-25', 'Inactivo');
 
SELECT * FROM tb_prestamos;
 
 
 
/* Proceso de almacenamiento de la tabla generos_libros*/
DELIMITER //
 
CREATE PROCEDURE AgregarGeneroLibro(nombre_genero_libro VARCHAR(50))
BEGIN
 
    INSERT INTO tb_generos_libros(nombre_genero_libro) VALUES (nombre_genero_libro);
 
END //
 
DELIMITER ;
 
CALL AgregarGeneroLibro ('Terror');
CALL AgregarGeneroLibro('Ciencia Ficción');
CALL AgregarGeneroLibro('Romance');
CALL AgregarGeneroLibro('Aventura');
CALL AgregarGeneroLibro('Fantasía');
CALL AgregarGeneroLibro('Misterio');
CALL AgregarGeneroLibro('Histórico');
CALL AgregarGeneroLibro('Comedia');
CALL AgregarGeneroLibro('Ciencia');
CALL AgregarGeneroLibro('Drama');
CALL AgregarGeneroLibro('Ficción');
CALL AgregarGeneroLibro('Biografía');
CALL AgregarGeneroLibro('Suspense');
CALL AgregarGeneroLibro('Humor');
CALL AgregarGeneroLibro('Fantasía Épica');
 
 
SELECT * FROM tb_generos_libros
 
 
 
/* Proceso de almacenamiento de la tabla Libro*/
DELIMITER //
 
CREATE PROCEDURE AgregarLibro(titulo_libro VARCHAR(50), anio_publicacion INT, NombreGenero VARCHAR(50), estado ENUM('Disponible','Prestado'))
BEGIN
	DECLARE generoLibro_id BINARY(36);
    -- Encierra la consulta SELECT entre paréntesis
   SET generoLibro_id = (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = NombreGenero);
 
   INSERT INTO tb_libros(titulo_libro, anio_publicacion, id_genero_libro, estado) VALUES (titulo_libro, anio_publicacion, generoLibro_id, estado);
 
END //
 
DELIMITER ;
 
CALL AgregarLibro ('Harry Potter', 2024, 'Terror', 'Disponible');
CALL AgregarLibro('Dune', 2021, 'Ciencia Ficción', 'Disponible');
CALL AgregarLibro('Orgullo y prejuicio', 1813, 'Romance', 'Prestado');
CALL AgregarLibro('La Odisea', 1813, 'Aventura', 'Disponible');
CALL AgregarLibro('El señor de los anillos', 1954, 'Fantasía', 'Disponible');
CALL AgregarLibro('Sherlock Holmes', 1887, 'Misterio', 'Prestado');
CALL AgregarLibro('Los pilares de la Tierra', 1989, 'Histórico', 'Disponible');
CALL AgregarLibro('La vida de Pi', 2001, 'Aventura', 'Disponible');
CALL AgregarLibro('Cosmos', 1980, 'Ciencia', 'Prestado');
CALL AgregarLibro('Romeo y Julieta', 1597, 'Drama', 'Disponible');
CALL AgregarLibro('1984', 1949, 'Ficción', 'Disponible');
CALL AgregarLibro('Steve Jobs', 2011, 'Biografía', 'Prestado');
CALL AgregarLibro('El Código Da Vinci', 2003, 'Suspense', 'Disponible');
CALL AgregarLibro('El Hobbit', 1937, 'Fantasía Épica', 'Disponible');
CALL AgregarLibro('Humor Sutil', 2005, 'Humor', 'Prestado');
 
SELECT * FROM tb_libros
 
 
 
 
/* Proceso de almacenamiento de la tabla clientes*/
DELIMITER //
 
CREATE PROCEDURE AgregarDetallesPrestamo(nombre_cliente VARCHAR(50), tituloLibro VARCHAR(100))
BEGIN
	DECLARE cliente_id BINARY(36);
	DECLARE prestamo_id BINARY(36);
	DECLARE libros_id BINARY(36);
    -- Encierra la consulta SELECT entre paréntesis
   SET cliente_id = (SELECT id_cliente FROM tb_clientes WHERE nombre_cliente = nombre_cliente LIMIT 1);
   SET prestamo_id = (SELECT id_prestamo FROM tb_prestamos WHERE id_cliente = cliente_id LIMIT 1);
   SET libros_id = (SELECT id_libros FROM tb_libros WHERE titulo_libro = tituloLibro LIMIT 1);

 
   INSERT INTO tb_detalles_prestamos(id_prestamo, id_libros) VALUES (prestamo_id, libros_id);
 
END //
 
DELIMITER ;
 
CALL AgregarDetallesPrestamo ('Juan', 'Harry Potter');
CALL AgregarDetallesPrestamo ('Luisa', 'El Hobbit');
CALL AgregarDetallesPrestamo ('Martín', 'Humor Sutil');
CALL AgregarDetallesPrestamo ('Isabel', '1984');
CALL AgregarDetallesPrestamo ('Gabriel', 'Steve Jobs');
CALL AgregarDetallesPrestamo ('Lucía', 'El Código Da Vinci');
CALL AgregarDetallesPrestamo ('Roberto', 'La vida de Pi');
CALL AgregarDetallesPrestamo ('Sofía', 'Cosmos');
CALL AgregarDetallesPrestamo ('Alejandro', 'Romeo y Julieta');
CALL AgregarDetallesPrestamo ('Ana', 'El señor de los anillos');
CALL AgregarDetallesPrestamo ('Miguel', 'Sherlock Holmes');
CALL AgregarDetallesPrestamo ('Laura', 'Los pilares de la Tierra');
CALL AgregarDetallesPrestamo ('Pedro', 'Dune');
CALL AgregarDetallesPrestamo ('María', 'Orgullo y prejuicio');
CALL AgregarDetallesPrestamo ('Carlos', 'La Odisea');
