DROP DATABASE IF EXISTS Ejercicio2;
CREATE DATABASE Ejercicio2;
USE Ejercicio2;

CREATE TABLE tb_clientes ( 
id_cliente INT  PRIMARY KEY,
nombre_cliente VARCHAR (50),
email_cliente VARCHAR (100),
telefono VARCHAR (10)
);

CREATE TABLE tb_prestamos ( 
id_prestamo INT  PRIMARY KEY,
id_cliente INT,
fecha_inicio DATE,
fecha_devolucion DATE,
estado ENUM('Activo','Inactivo'),
CONSTRAINT fk_prestamo_cliente
    FOREIGN KEY (id_cliente) REFERENCES tb_clientes(id_detalle)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE tb_generos_libros (
id_genero_libro INT PRIMARY KEY,
nombre_genero_libro VARCHAR(50)
); 

CREATE TABLE tb_libros (
id_libro INT PRIMARY KEY,
titulo_libro VARCHAR (50),
anio_publicacion INT,
id_genero_libro INT,
estado ENUM ('Disponible', 'Prestado'),
CONSTRAINT fk_libro_genero
FOREIGN KEY (id_genero_libro) REFERENCES tb_generos_libros(id_genero_libro)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE tb_detalles_prestamos ( 
id_detalle_prestamo INT  PRIMARY KEY,
id_prestamo INT,
id_libro INT,
CONSTRAINT fk_detalle_prestamo
FOREIGN KEY (id_prestamo) REFERENCES tb_prestamos(id_prestamo)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT fk_detalle_libro
FOREIGN KEY (id_libro) REFERENCES tb_libros(id_libro)
ON DELETE CASCADE ON UPDATE CASCADE
);



