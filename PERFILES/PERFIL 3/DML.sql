USE libro_express;

/*INSERTAR CLIENTE*/
CALL insert_cliente('Juanito', 'juanito@gmail.com', '123-4567');
CALL insert_cliente('Pedrito', 'pedrito@gmail.com', '987-6543');
CALL insert_cliente('María Elena', 'mariaelena@gmail.com', '555-5678');
CALL insert_cliente('Carlos Alberto', 'carlosalberto@gmail.com', '555-9012');
CALL insert_cliente('Ana Sofía', 'anasofia@gmail.com', '555-4321');
CALL insert_cliente('Miguel Ángel', 'miguelangel@gmail.com', '555-8765');
CALL insert_cliente('Laura Patricia', 'laurapatricia@gmail.com', '555-0987');
CALL insert_cliente('Roberto Carlos', 'robertocarlos@gmail.com', '555-1111');
CALL insert_cliente('Sofía Alejandra', 'sofiaalejandra@gmail.com', '555-2222');
CALL insert_cliente('Alejandro José', 'alejandrojose@gmail.com', '555-3333');
CALL insert_cliente('Isabel Cristina', 'isabelcristina@gmail.com', '555-4444');
CALL insert_cliente('Gabriel Andrés', 'gabrielandres@gmail.com', '555-5555');
CALL insert_cliente('Lucía Victoria', 'luciavictoria@gmail.com', '555-6666');
CALL insert_cliente('Luisa Fernanda', 'luisafernanda@gmail.com', '555-7777');
CALL insert_cliente('Martín Alejandro', 'martinalejandro@gmail.com', '555-8888');
SELECT * FROM tb_clientes;

/*INSERTAR PRESTAMO*/
CALL insert_prestamo('Juanito', '2024-02-28', '2024-03-05', 'Activo');
CALL insert_prestamo('Pedrito', '2024-03-01', '2024-03-15', 'Activo');
CALL insert_prestamo('María Elena', '2024-02-28', '2024-03-10', 'Inactivo');
CALL insert_prestamo('Carlos Alberto', '2024-03-05', '2024-03-20', 'Activo');
CALL insert_prestamo('Ana Sofía', '2024-03-10', '2024-03-25', 'Activo');
CALL insert_prestamo('Miguel Ángel', '2024-03-05', '2024-03-15', 'Inactivo');
CALL insert_prestamo('Laura Patricia', '2024-03-15', '2024-03-30', 'Activo');
CALL insert_prestamo('Roberto Carlos', '2024-03-20', '2024-04-05', 'Activo');
CALL insert_prestamo('Sofía Alejandra', '2024-04-01', '2024-04-15', 'Inactivo');
CALL insert_prestamo('Alejandro José', '2024-03-25', '2024-04-10', 'Activo');
CALL insert_prestamo('Isabel Cristina', '2024-04-10', '2024-04-25', 'Activo');
CALL insert_prestamo('Gabriel Andrés', '2024-04-05', '2024-04-15', 'Inactivo');
CALL insert_prestamo('Lucía Victoria', '2024-04-15', '2024-04-30', 'Activo');
CALL insert_prestamo('Luisa Fernanda', '2024-05-01', '2024-05-15', 'Activo');
CALL insert_prestamo('Martín Alejandro', '2024-05-10', '2024-05-25', 'Inactivo');
SELECT * FROM tb_prestamos;

/*INSERTAR GENERO DE LIBRO*/
CALL insert_genero_libro ('Terror');
CALL insert_genero_libro('Ciencia Ficción');
CALL insert_genero_libro('Romance');
CALL insert_genero_libro('Aventura');
CALL insert_genero_libro('Fantasía');
CALL insert_genero_libro('Misterio');
CALL insert_genero_libro('Histórico');
CALL insert_genero_libro('Comedia');
CALL insert_genero_libro('Ciencia');
CALL insert_genero_libro('Drama');
CALL insert_genero_libro('Ficción');
CALL insert_genero_libro('Biografía');
CALL insert_genero_libro('Suspense');
CALL insert_genero_libro('Humor');
CALL insert_genero_libro('Fantasía Épica');
SELECT * FROM tb_generos_libros;

/*INSERTAR LIBRO*/
CALL insert_libro ('Harry Potter', 2024, 'Terror', 'Disponible');
CALL insert_libro('Dune', 2021, 'Ciencia Ficción', 'Disponible');
CALL insert_libro('Orgullo y prejuicio', 1813, 'Romance', 'Prestado');
CALL insert_libro('La Odisea', 1813, 'Aventura', 'Disponible');
CALL insert_libro('El señor de los anillos', 1954, 'Fantasía', 'Disponible');
CALL insert_libro('Sherlock Holmes', 1887, 'Misterio', 'Prestado');
CALL insert_libro('Los pilares de la Tierra', 1989, 'Histórico', 'Disponible');
CALL insert_libro('La vida de Pi', 2001, 'Aventura', 'Disponible');
CALL insert_libro('Cosmos', 1980, 'Ciencia', 'Prestado');
CALL insert_libro('Romeo y Julieta', 1597, 'Drama', 'Disponible');
CALL insert_libro('1984', 1949, 'Ficción', 'Disponible');
CALL insert_libro('Steve Jobs', 2011, 'Biografía', 'Prestado');
CALL insert_libro('El Código Da Vinci', 2003, 'Suspense', 'Disponible');
CALL insert_libro('El Hobbit', 1937, 'Fantasía Épica', 'Disponible');
CALL insert_libro('Humor Sutil', 2005, 'Humor', 'Prestado');
SELECT * FROM tb_libros;

/*INSERTAR DETALLES DEL PRESTAMO*/
CALL insert_detalles_prestamo('Juanito', 'Harry Potter');
CALL insert_detalles_prestamo('Luisa Fernanda', 'El Hobbit');
CALL insert_detalles_prestamo('Martín Alejandro', 'Humor Sutil');
CALL insert_detalles_prestamo('Isabel Cristina', '1984');
CALL insert_detalles_prestamo('Gabriel Andrés', 'Steve Jobs');
CALL insert_detalles_prestamo('Lucía Victoria', 'El Código Da Vinci');
CALL insert_detalles_prestamo('Roberto Carlos', 'La vida de Pi');
CALL insert_detalles_prestamo('Sofía Alejandra', 'Cosmos');
CALL insert_detalles_prestamo('Alejandro José', 'Romeo y Julieta');
CALL insert_detalles_prestamo('Ana Sofía', 'El señor de los anillos');
CALL insert_detalles_prestamo('Miguel Ángel', 'Sherlock Holmes');
CALL insert_detalles_prestamo('Laura Patricia', 'Los pilares de la Tierra');
CALL insert_detalles_prestamo('Pedrito', 'Dune');
CALL insert_detalles_prestamo('María Elena', 'Orgullo y prejuicio');
CALL insert_detalles_prestamo('Carlos Alberto', 'La Odisea');
SELECT * FROM tb_detalles_prestamos;

