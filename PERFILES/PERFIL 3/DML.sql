USE libro_express;

/*INSERTAR CLIENTE*/
CALL InsertCliente('Juanito', 'juanito@gmail.com', '123-4567');
CALL InsertCliente('Pedrito', 'pedrito@gmail.com', '987-6543');
CALL InsertCliente('María Elena', 'mariaelena@gmail.com', '555-5678');
CALL InsertCliente('Carlos Alberto', 'carlosalberto@gmail.com', '555-9012');
CALL InsertCliente('Ana Sofía', 'anasofia@gmail.com', '555-4321');
CALL InsertCliente('Miguel Ángel', 'miguelangel@gmail.com', '555-8765');
CALL InsertCliente('Laura Patricia', 'laurapatricia@gmail.com', '555-0987');
CALL InsertCliente('Roberto Carlos', 'robertocarlos@gmail.com', '555-1111');
CALL InsertCliente('Sofía Alejandra', 'sofiaalejandra@gmail.com', '555-2222');
CALL InsertCliente('Alejandro José', 'alejandrojose@gmail.com', '555-3333');
CALL InsertCliente('Isabel Cristina', 'isabelcristina@gmail.com', '555-4444');
CALL InsertCliente('Gabriel Andrés', 'gabrielandres@gmail.com', '555-5555');
CALL InsertCliente('Lucía Victoria', 'luciavictoria@gmail.com', '555-6666');
CALL InsertCliente('Luisa Fernanda', 'luisafernanda@gmail.com', '555-7777');
CALL InsertCliente('Martín Alejandro', 'martinalejandro@gmail.com', '555-8888');
SELECT * FROM tb_clientes;

/*INSERTAR PRESTAMO*/
CALL InsertPrestamo('Juanito', '2024-02-28', '2024-03-05', 'Activo');
CALL InsertPrestamo('Pedrito', '2024-03-01', '2024-03-15', 'Activo');
CALL InsertPrestamo('María Elena', '2024-02-28', '2024-03-10', 'Inactivo');
CALL InsertPrestamo('Carlos Alberto', '2024-03-05', '2024-03-20', 'Activo');
CALL InsertPrestamo('Ana Sofía', '2024-03-10', '2024-03-25', 'Activo');
CALL InsertPrestamo('Miguel Ángel', '2024-03-05', '2024-03-15', 'Inactivo');
CALL InsertPrestamo('Laura Patricia', '2024-03-15', '2024-03-30', 'Activo');
CALL InsertPrestamo('Roberto Carlos', '2024-03-20', '2024-04-05', 'Activo');
CALL InsertPrestamo('Sofía Alejandra', '2024-04-01', '2024-04-15', 'Inactivo');
CALL InsertPrestamo('Alejandro José', '2024-03-25', '2024-04-10', 'Activo');
CALL InsertPrestamo('Isabel Cristina', '2024-04-10', '2024-04-25', 'Activo');
CALL InsertPrestamo('Gabriel Andrés', '2024-04-05', '2024-04-15', 'Inactivo');
CALL InsertPrestamo('Lucía Victoria', '2024-04-15', '2024-04-30', 'Activo');
CALL InsertPrestamo('Luisa Fernanda', '2024-05-01', '2024-05-15', 'Activo');
CALL InsertPrestamo('Martín Alejandro', '2024-05-10', '2024-05-25', 'Inactivo');
SELECT * FROM tb_prestamos;

/*INSERTAR GENERO DE LIBRO*/
CALL InsertGeneroLibro ('Terror');
CALL InsertGeneroLibro('Ciencia Ficción');
CALL InsertGeneroLibro('Romance');
CALL InsertGeneroLibro('Aventura');
CALL InsertGeneroLibro('Fantasía');
CALL InsertGeneroLibro('Misterio');
CALL InsertGeneroLibro('Histórico');
CALL InsertGeneroLibro('Comedia');
CALL InsertGeneroLibro('Ciencia');
CALL InsertGeneroLibro('Drama');
CALL InsertGeneroLibro('Ficción');
CALL InsertGeneroLibro('Biografía');
CALL InsertGeneroLibro('Suspense');
CALL InsertGeneroLibro('Humor');
CALL InsertGeneroLibro('Fantasía Épica');
SELECT * FROM tb_generos_libros;

/*INSERTAR LIBRO*/
CALL InsertLibro ('Harry Potter', 2024, 'Terror', 'Disponible');
CALL InsertLibro('Dune', 2021, 'Ciencia Ficción', 'Disponible');
CALL InsertLibro('Orgullo y prejuicio', 1813, 'Romance', 'Prestado');
CALL InsertLibro('La Odisea', 1813, 'Aventura', 'Disponible');
CALL InsertLibro('El señor de los anillos', 1954, 'Fantasía', 'Disponible');
CALL InsertLibro('Sherlock Holmes', 1887, 'Misterio', 'Prestado');
CALL InsertLibro('Los pilares de la Tierra', 1989, 'Histórico', 'Disponible');
CALL InsertLibro('La vida de Pi', 2001, 'Aventura', 'Disponible');
CALL InsertLibro('Cosmos', 1980, 'Ciencia', 'Prestado');
CALL InsertLibro('Romeo y Julieta', 1597, 'Drama', 'Disponible');
CALL InsertLibro('1984', 1949, 'Ficción', 'Disponible');
CALL InsertLibro('Steve Jobs', 2011, 'Biografía', 'Prestado');
CALL InsertLibro('El Código Da Vinci', 2003, 'Suspense', 'Disponible');
CALL InsertLibro('El Hobbit', 1937, 'Fantasía Épica', 'Disponible');
CALL InsertLibro('Humor Sutil', 2005, 'Humor', 'Prestado');
SELECT * FROM tb_libros;

/*INSERTAR DETALLES DEL PRESTAMO*/
CALL InsertDetallesPrestamo('Juanito', 'Harry Potter');
CALL InsertDetallesPrestamo('Luisa Fernanda', 'El Hobbit');
CALL InsertDetallesPrestamo('Martín Alejandro', 'Humor Sutil');
CALL InsertDetallesPrestamo('Isabel Cristina', '1984');
CALL InsertDetallesPrestamo('Gabriel Andrés', 'Steve Jobs');
CALL InsertDetallesPrestamo('Lucía Victoria', 'El Código Da Vinci');
CALL InsertDetallesPrestamo('Roberto Carlos', 'La vida de Pi');
CALL InsertDetallesPrestamo('Sofía Alejandra', 'Cosmos');
CALL InsertDetallesPrestamo('Alejandro José', 'Romeo y Julieta');
CALL InsertDetallesPrestamo('Ana Sofía', 'El señor de los anillos');
CALL InsertDetallesPrestamo('Miguel Ángel', 'Sherlock Holmes');
CALL InsertDetallesPrestamo('Laura Patricia', 'Los pilares de la Tierra');
CALL InsertDetallesPrestamo('Pedrito', 'Dune');
CALL InsertDetallesPrestamo('María Elena', 'Orgullo y prejuicio');
CALL InsertDetallesPrestamo('Carlos Alberto', 'La Odisea');
SELECT * FROM tb_detalles_prestamos;

