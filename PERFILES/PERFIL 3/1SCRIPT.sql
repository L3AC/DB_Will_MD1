DROP DATABASE IF EXISTS libro_express;
CREATE DATABASE libro_express;
USE libro_express;

CREATE TABLE tb_clientes ( 
id_cliente VARCHAR(255) PRIMARY KEY DEFAULT UUID(),
nombre_cliente VARCHAR (50) NOT NULL,
email_cliente VARCHAR (100)NOT NULL,
telefono VARCHAR (10) NOT NULL
);

CREATE TABLE tb_prestamos ( 
id_prestamo VARCHAR(255)  PRIMARY KEY DEFAULT UUID(),
id_cliente VARCHAR(255),
fecha_inicio DATETIME,
fecha_devolucion DATETIME,
estado ENUM('Activo','Inactivo'),
CONSTRAINT fk_prestamo_cliente
FOREIGN KEY (id_cliente) REFERENCES tb_clientes(id_cliente)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE tb_generos_libros (
id_genero_libro VARCHAR(255) PRIMARY KEY DEFAULT UUID(),
nombre_genero_libro VARCHAR(50) NOT NULL
); 

CREATE TABLE tb_libros (
id_libro VARCHAR(255) PRIMARY KEY DEFAULT UUID(),
titulo_libro VARCHAR (50) NOT NULL,
anio_publicacion INT,
id_genero_libro VARCHAR(255),
estado ENUM ('Disponible', 'Prestado'),
CONSTRAINT fk_libro_genero
FOREIGN KEY (id_genero_libro) REFERENCES tb_generos_libros(id_genero_libro)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE tb_detalles_prestamos ( 
id_detalle_prestamo VARCHAR(255) PRIMARY KEY DEFAULT UUID(),
id_prestamo VARCHAR(255),
id_libro VARCHAR(255),
CONSTRAINT fk_detalle_prestamo
FOREIGN KEY (id_prestamo) REFERENCES tb_prestamos(id_prestamo)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT fk_detalle_libro
FOREIGN KEY (id_libro) REFERENCES tb_libros(id_libro)
ON DELETE CASCADE ON UPDATE CASCADE
);
