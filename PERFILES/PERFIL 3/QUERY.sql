DROP DATABASE IF EXIST ;
CREATE DATABASE ;
USE ;
CREATE DATABASE Ejercicio2;
USE Ejercicio2;

create table clientes ( 
id_cliente int  primary key,
nombre_cliente varchar (50),
email_cliente varchar (100),
telefono varchar (10)
);

create table prestamos ( 
id_prestamo int  primary key,
id_cliente int,
fecha_inicio date,
fecha_devolucion date,
estado enum('Activo','Inactivo')
);

create table generos_libros (
id_genero_libro int primary key,
nombre_genero_libro varchar(50)
); 

create table libros (
id_libro int primary key,
titulo_libro varchar (50),
anio_publicacion int,
id_genero_libro int,
estado enum ('Disponible', 'Prestado')


);

create table detalles_prestamos ( 
id_detalle_prestamo int  primary key,
id_prestamo int,
id_libro int
);



CREATE TABLE(
    ID INT PRIMARY KEY,
    CONSTRAINT fk_comentario_detalle
    FOREIGN KEY (id_detalle) REFERENCES prc_detalle_pedidos(id_detalle)
    ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO () VALUES(UUID(),);

