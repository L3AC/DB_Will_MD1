drop database Actividad2B;
CREATE DATABASE Actividad2B;
USE Actividad2B;
CREATE TABLE Clientes(
id_cliente INT NOT NULL PRIMARY KEY ,
nombre_cliente VARCHAR (50) NOT NULL,
apellido_cliente VARCHAR (50) NOT NULL,
dui_cliente VARCHAR (10) NOT NULL unique,
correo_cliente VARCHAR (100) NOT NULL unique,
telefono_cliente VARCHAR (9) NOT NULL unique,
nacimiento_cliente DATE NOT NULL,
CHECK (nacimiento_cliente<=2005),
direccion_cliente VARCHAR (250) NOT NULL,
clave_cliente VARCHAR (100) NOT NULL,
estado_cliente BOOLEAN NOT NULL,
fecha_cliente DATE NOT NULL DEFAULT NOW()
);
CREATE TABLE Pedidos(
id_pedido INT NOT NULL PRIMARY KEY auto_increment,
id_cliente INT NOT NULL,
estado_pedido enum ("Activo", "Inactivo") NOT NULL default "Inactivo",
fecha_registro DATE NOT NULL default now(),
direccion_pedido VARCHAR (50) NOT NULL
);
CREATE TABLE Administradores(
id_administrador INT NOT NULL PRIMARY KEY auto_increment,
nombre_administradro VARCHAR (50) NOT NULL,
apellido_administrador VARCHAR (50) NOT NULL,
correo_administrador VARCHAR (100) NOT NULL unique,
alias_administrador VARCHAR (25) NOT NULL,
clave_administrador VARCHAR (100) NOT NULL,
fecha_registro DATE NOT NULL default NOW()
);
CREATE TABLE Categorias(
id_categoria INT NOT NULL PRIMARY KEY auto_increment,
nombre_categoria VARCHAR (50) NOT NULL,
descripcion_categoria VARCHAR (250) NOT NULL,
imagen_categoria VARCHAR (25) NOT NULL
);
CREATE TABLE Productos(
id_producto INT NOT NULL PRIMARY KEY auto_increment,
id_categoria INT NOT NULL,
nombre_producto VARCHAR (50) NOT NULL,
descripcion_producto VARCHAR (250) NOT NULL,
precio_producto NUMERIC (5,2) NOT NULL,
imagen_producto VARCHAR (25) NOT NULL,
estado_producto BOOLEAN NOT NULL,
id_administrador INT NOT NULL,
existencia_producto INT NOT NULL,
fecha_registro DATE NOT NULL default now()
);
CREATE TABLE Detalle_pedidos(
id_detalle INT PRIMARY KEY NOT NULL auto_increment,
id_pedido INT NOT NULL,
id_producto INT NOT NULL,
cantidad_producto INT NOT NULL,
precio_producto NUMERIC (5,2) NOT NULL
);

CREATE TABLE Valoraciones(
id_valoracion INT NOT NULL PRIMARY KEY auto_increment,
id_detalle INT UNIQUE NOT NULL,
calificacion_producto INT NULL,
comentario_producto VARCHAR (250) NULL,
fecha_valoracion DATE NOT NULL default NOW(),
estado_comentario BOOLEAN NOT NULL
);

ALTER TABLE Pedidos ADD CONSTRAINT fk_Ped_Cli
FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente)
on delete CASCADE;
ALTER TABLE Detalle_pedidos ADD CONSTRAINT fk_Det_Ped
FOREIGN KEY (id_pedido) REFERENCES Pedidos (id_pedido)
on delete CASCADE;
ALTER TABLE Detalle_pedidos ADD CONSTRAINT fk_Det_Pro
FOREIGN KEY (id_producto) REFERENCES Productos (id_producto)
on delete CASCADE;
ALTER TABLE Productos ADD CONSTRAINT fk_Pro_Adm
FOREIGN KEY (id_administrador) REFERENCES Administradores (id_administrador)
on delete CASCADE;
ALTER TABLE Productos ADD CONSTRAINT fk_Pro_Cat
FOREIGN KEY (id_categoria) REFERENCES Categorias (id_categoria)
on delete CASCADE;
ALTER TABLE Valoraciones ADD CONSTRAINT fk_Val_Det
FOREIGN KEY (id_detalle) REFERENCES Detalle_pedidos (id_detalle)
on delete CASCADE;

INSERT INTO Clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, clave_cliente, estado_cliente)
VALUES
('Juan', 'Pérez', '123456789', 'juan@example.com', '123456789', '1990-01-01', '123 Calle Principal', 'contraseña123', true),
('María', 'López', '987654321', 'maria@example.com', '987654321', '1985-05-15', '456 Calle Roble', 'contraseñasegura', true),
('Carlos', 'Gómez', '555555555', 'carlos@example.com', '555555555', '1995-08-20', '789 Calle Laurel', 'miclave123', true),
('Laura', 'Martínez', '111111111', 'laura@example.com', '111111111', '1988-03-10', '321 Calle Pino', 'segurisima456', true),
('Roberto', 'Hernández', '777777777', 'roberto@example.com', '777777777', '1992-11-05', '654 Calle Abedul', 'clave123', true),
('Sofía', 'Ramírez', '444444444', 'sofia@example.com', '444444444', '1980-09-25', '987 Calle Olmo', 'contraseña456', true),
('Alejandro', 'Torres', '888888888', 'alejandro@example.com', '888888888', '1993-07-12', '234 Calle Sauce', 'miclave456', true),
('Ana', 'Díaz', '222222222', 'ana@example.com', '222222222', '1987-12-30', '567 Calle Fresno', 'contraseña789', true),
('Javier', 'Cruz', '999999999', 'javier@example.com', '999999999', '1998-04-18', '876 Calle Álamo', 'clave456', true),
('Isabel', 'Vargas', '333333333', 'isabel@example.com', '333333333', '1982-06-08', '210 Calle Abeto', 'miclave789', true),
('Ricardo', 'Sánchez', '666666666', 'ricardo@example.com', '666666666', '1996-02-14', '543 Calle Cedro', 'contraseña123', true),
('Fernanda', 'Gutiérrez', '000000000', 'fernanda@example.com', '000000000', '1984-10-03', '789 Calle Caoba', 'contraseñasegura', true),
('Miguel', 'Reyes', '121212121', 'miguel@example.com', '121212121', '1991-09-17', '654 Calle Castaño', 'miclave123', true),
('Luisa', 'Ortega', '454545454', 'luisa@example.com', '454545454', '1989-07-22', '321 Calle Cerezo', 'segurisima456', true),
('Pedro', 'Castro', '787878787', 'pedro@example.com', '787878787', '1994-04-05', '987 Calle Dátil', 'clave123', true),
('Carmen', 'Morales', '232323232', 'carmen@example.com', '232323232', '1986-01-28', '234 Calle Eucalipto', 'contraseña456', true),
('Antonio', 'Navarro', '565656565', 'antonio@example.com', '565656565', '1997-11-10', '567 Calle Espino', 'miclave456', true),
('Lorena', 'Jiménez', '898989898', 'lorena@example.com', '898989898', '1983-08-15', '876 Calle Fresno', 'contraseña789', true),
('Gabriel', 'Silva', '343434343', 'gabriel@example.com', '343434343', '1981-05-31', '210 Calle Haya', 'clave456', true),
('Silvia', 'Herrera', '676767676', 'silvia@example.com', '676767676', '1999-03-25', '543 Calle Iroko', 'miclave789', true),
('Daniel', 'Romero', '010101010', 'daniel@example.com', '010101010', '1980-12-14', '789 Calle Jazmín', 'contraseña123', true),
('Natalia', 'García', '343434343', 'natalia@example.com', '343434343', '1995-10-07', '654 Calle Lirio', 'contraseñasegura', true),
('Hugo', 'Fernández', '787878787', 'hugo@example.com', '787878787', '1984-06-22', '987 Calle Magnolia', 'miclave123', true),
('Monica', 'Alvarez', '565656565', 'monica@example.com', '565656565', '1990-02-04', '321 Calle Naranjo', 'segurisima456', true);

INSERT INTO Pedidos (id_cliente, estado_pedido, fecha_registro, direccion_pedido)
VALUES 
(1, 'Activo', '2024-02-02', 'Calle Principal 123'),
(2, 'Activo', '2024-02-01', 'Avenida Central 456'),
(3, 'Inactivo', '2024-01-31', 'Calle Secundaria 789'),
(4, 'Activo', '2024-01-30', 'Calle Principal 234'),
(5, 'Inactivo', '2024-01-29', 'Avenida Central 567'),
(6, 'Activo', '2024-01-28', 'Calle Secundaria 890'),
(7, 'Inactivo', '2024-01-27', 'Calle Principal 345'),
(8, 'Activo', '2024-01-26', 'Avenida Central 678'),
(9, 'Activo', '2024-01-25', 'Calle Secundaria 901'),
(10, 'Inactivo', '2024-01-24', 'Calle Principal 456'),
(11, 'Activo', '2024-01-23', 'Avenida Central 789'),
(12, 'Inactivo', '2024-01-22', 'Calle Secundaria 012'),
(13, 'Activo', '2024-01-21', 'Calle Principal 567'),
(14, 'Inactivo', '2024-01-20', 'Avenida Central 890'),
(15, 'Activo', '2024-01-19', 'Calle Secundaria 123'),
(16, 'Inactivo', '2024-01-18', 'Calle Principal 678'),
(17, 'Activo', '2024-01-17', 'Avenida Central 901'),
(18, 'Inactivo', '2024-01-16', 'Calle Secundaria 234'),
(19, 'Activo', '2024-01-15', 'Calle Principal 789'),
(20, 'Inactivo', '2024-01-14', 'Avenida Central 012'),
(21, 'Activo', '2024-01-13', 'Calle Secundaria 345'),
(22, 'Inactivo', '2024-01-12', 'Calle Principal 890'),
(23, 'Activo', '2024-01-11', 'Avenida Central 123'),
(24, 'Inactivo', '2024-01-10', 'Calle Secundaria 456'),
(25, 'Activo', '2024-01-09', 'Calle Principal 012');

INSERT INTO Administradores (nombre_administrador, apellido_administrador, correo_administrador, alias_administrador, clave_administrador)
VALUES 
('Carlos', 'González', 'carlos.admin@example.com', 'cgonzalez', 'adminpass123'),
('Ana', 'Martínez', 'ana.admin@example.com', 'amartinez', 'secureadmin789'),
('Luis', 'Rodríguez', 'luis.admin@example.com', 'lrodriguez', 'adminpassword456'),
('María', 'Hernández', 'maria.admin@example.com', 'mhernandez', 'adminpass789'),
('Javier', 'Pérez', 'javier.admin@example.com', 'jperez', 'secureadmin123'),
('Laura', 'Gómez', 'laura.admin@example.com', 'lgomez', 'adminpassword789'),
('Alejandro', 'Díaz', 'alejandro.admin@example.com', 'adiaz', 'adminpass456'),
('Sofía', 'Torres', 'sofia.admin@example.com', 'storres', 'secureadmin456'),
('Juan', 'López', 'juan.admin@example.com', 'jlopez', 'adminpass123'),
('Isabel', 'Ramírez', 'isabel.admin@example.com', 'iramirez', 'adminpassword123'),
('Miguel', 'Cruz', 'miguel.admin@example.com', 'mcruz', 'secureadmin789'),
('Natalia', 'Martínez', 'natalia.admin@example.com', 'nmartinez', 'adminpass789'),
('David', 'Sánchez', 'david.admin@example.com', 'dsanchez', 'adminpassword456'),
('Elena', 'Gutiérrez', 'elena.admin@example.com', 'egutierrez', 'secureadmin123'),
('Gabriel', 'Hernández', 'gabriel.admin@example.com', 'ghernandez', 'adminpassword789'),
('Patricia', 'García', 'patricia.admin@example.com', 'pgarcia', 'adminpass456'),
('Diego', 'Vargas', 'diego.admin@example.com', 'dvargas', 'secureadmin123'),
('Carmen', 'Silva', 'carmen.admin@example.com', 'csilva', 'adminpassword123'),
('Manuel', 'Morales', 'manuel.admin@example.com', 'mmorales', 'adminpass789'),
('Silvia', 'Ortega', 'silvia.admin@example.com', 'sortega', 'secureadmin456'),
('Ricardo', 'Navarro', 'ricardo.admin@example.com', 'rnavarro', 'adminpass456'),
('Lorena', 'Jiménez', 'lorena.admin@example.com', 'ljimenez', 'secureadmin123'),
('Andrés', 'Castro', 'andres.admin@example.com', 'acastro', 'adminpass789'),
('Julia', 'Fernández', 'julia.admin@example.com', 'jfernandez', 'adminpassword123'),
('Hugo', 'Gómez', 'hugo.admin@example.com', 'hgomez', 'secureadmin456');

INSERT INTO Categorias (nombre_categoria, descripcion_categoria, imagen_categoria)
VALUES 
('Electrónicos', 'Productos electrónicos de última generación', 'electronica.jpg'),
('Ropa', 'Moda actual y tendencias de vestimenta', 'ropa.jpg'),
('Hogar', 'Artículos para el hogar y decoración', 'hogar.jpg'),
('Deportes', 'Equipos y accesorios para diversas actividades deportivas', 'deportes.jpg'),
('Juguetes', 'Juguetes para todas las edades', 'juguetes.jpg'),
('Libros', 'Libros de diversas categorías y géneros literarios', 'libros.jpg'),
('Alimentos', 'Productos alimenticios y gourmet', 'alimentos.jpg'),
('Salud y Belleza', 'Productos para el cuidado personal y belleza', 'salud_belleza.jpg'),
('Electrodomésticos', 'Electrodomésticos para facilitar la vida diaria', 'electrodomesticos.jpg'),
('Muebles', 'Mobiliario para diferentes espacios del hogar', 'muebles.jpg'),
('Instrumentos Musicales', 'Instrumentos para músicos amateurs y profesionales', 'instrumentos.jpg'),
('Automóviles', 'Accesorios y herramientas para automóviles', 'automoviles.jpg'),
('Tecnología', 'Productos y gadgets tecnológicos', 'tecnologia.jpg'),
('Camping y Aire Libre', 'Equipos y artículos para actividades al aire libre', 'camping.jpg'),
('Arte y Manualidades', 'Suministros para actividades artísticas y creativas', 'arte_manualidades.jpg'),
('Bebés y Niños', 'Productos para bebés y niños', 'bebes_ninos.jpg'),
('Jardín', 'Artículos para el cuidado y decoración de jardines', 'jardin.jpg'),
('Fotografía', 'Equipos y accesorios para entusiastas de la fotografía', 'fotografia.jpg'),
('Mascotas', 'Productos para el cuidado y entretenimiento de mascotas', 'mascotas.jpg'),
('Viajes', 'Artículos y accesorios para viajeros', 'viajes.jpg');


INSERT INTO Productos (id_categoria, nombre_producto, descripcion_producto, precio_producto, imagen_producto, estado_producto, id_administrador, existencia_producto)
VALUES 
(1, 'Laptop', 'Portátil de última generación', 1200.50, 'laptop_image.jpg', true, 1, 50),
(2, 'Smartphone', 'Teléfono inteligente con cámara de alta resolución', 699.99, 'smartphone_image.jpg', true, 2, 100),
(1, 'Tablet', 'Tableta ligera y portátil', 299.75, 'tablet_image.jpg', true, 3, 30),
(3, 'Cámara DSLR', 'Cámara réflex digital de alta calidad', 899.00, 'camera_image.jpg', true, 4, 20),
(2, 'Auriculares Inalámbricos', 'Auriculares Bluetooth con cancelación de ruido', 129.99, 'headphones_image.jpg', true, 5, 80),
(3, 'Impresora Multifuncional', 'Impresora que imprime, escanea y copia', 199.50, 'printer_image.jpg', true, 6, 15),
(1, 'Teclado Mecánico', 'Teclado para gamers con retroiluminación LED', 89.95, 'keyboard_image.jpg', true, 7, 50),
(2, 'Monitor Curvo', 'Monitor de pantalla curva para una experiencia inmersiva', 349.99, 'monitor_image.jpg', true, 8, 25),
(3, 'Altavoces Bluetooth', 'Altavoces portátiles con conectividad inalámbrica', 79.99, 'speakers_image.jpg', true, 9, 40),
(1, 'Disco Duro Externo', 'Almacenamiento externo de gran capacidad', 129.50, 'harddrive_image.jpg', true, 10, 60);

INSERT INTO Detalle_pedidos (id_pedido, id_producto, cantidad_producto, precio_producto)
VALUES 
(1, 101, 2, 25.99),
(1, 203, 1, 49.99),
(2, 305, 3, 12.50),
(3, 102, 1, 34.75),
(4, 204, 2, 19.99),
(4, 306, 1, 9.95),
(5, 103, 4, 8.50),
(6, 205, 2, 45.00),
(7, 307, 1, 29.99),
(8, 104, 3, 14.99),
(8, 206, 1, 59.99),
(9, 308, 2, 7.25),
(10, 105, 1, 22.50),
(11, 207, 3, 18.75),
(12, 309, 1, 39.99),
(12, 106, 2, 11.50),
(13, 208, 1, 27.50),
(14, 310, 4, 5.99),
(15, 107, 2, 33.25),
(16, 209, 1, 16.99),
(17, 311, 3, 23.50),
(18, 108, 1, 48.75),
(19, 210, 2, 10.99),
(20, 312, 1, 14.50),
(20, 109, 3, 37.99);

INSERT INTO Valoraciones (id_detalle, calificacion_producto, comentario_producto, estado_comentario)
VALUES 
(1, 4, 'Me encantaron los productos, excelente servicio', true),
(2, 5, 'La entrega fue rápida y los productos son de alta calidad', true),
(3, 3, 'Uno de los productos llegó dañado, pero el resto estaba bien', true),
(4, 4, 'Muy satisfecho con la compra, definitivamente volveré a comprar', true),
(5, 5, 'Los productos cumplen con mis expectativas, excelente servicio al cliente', true),
(6, 2, 'Hubo un pequeño problema con la entrega, pero se resolvió rápidamente', true),
(7, 4, 'Productos de buena calidad, recomiendo esta tienda', true),
(8, 5, 'Servicio al cliente excepcional, respondieron a mis preguntas de inmediato', true),
(9, 3, 'Algunos productos estaban fuera de stock, pero me ofrecieron alternativas', true),
(10, 4, 'Buena variedad de productos, la plataforma es fácil de usar', true),
(11, 5, 'Productos bien empaquetados, llegaron en perfecto estado', true),
(12, 4, 'Hice una devolución y el proceso fue bastante sencillo', true),
(13, 3, 'Me gustaría más variedad de productos, pero en general estoy satisfecho', true),
(14, 5, 'Excelente atención al cliente, me ayudaron con todas mis dudas', true),
(15, 4, 'Buena relación calidad-precio, volveré a comprar aquí', true),
(16, 2, 'El tiempo de entrega fue más largo de lo esperado', true),
(17, 4, 'Los productos son exactamente como se describen, estoy contento con mi compra', true),
(18, 5, 'Fácil de navegar por la página web, encontré lo que estaba buscando', true),
(19, 3, 'Tuve un problema con el pago, pero el servicio al cliente lo solucionó rápidamente', true),
(20, 4, 'Me gustaría más información sobre los productos, pero en general estoy satisfecho', true);

