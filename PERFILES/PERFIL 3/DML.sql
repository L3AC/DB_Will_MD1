USE libro_express;

/*INSERTAR CLIENTES*/
CALL InsertarCliente('John Doe', 'johndoe@example.com', '123456789');
CALL InsertarCliente('Jane Smith', 'janesmith@example.com', '987654321');
CALL InsertarCliente('Michael Johnson', 'michaeljohnson@example.com', '456789123');
CALL InsertarCliente('Emily Williams', 'emilywilliams@example.com', '789456123');
CALL InsertarCliente('David Brown', 'davidbrown@example.com', '321654987');
CALL InsertarCliente('Sarah Davis', 'sarahdavis@example.com', '654321789');
CALL InsertarCliente('Matthew Wilson', 'matthewwilson@example.com', '987123456');
CALL InsertarCliente('Olivia Taylor', 'oliviataylor@example.com', '741852963');
CALL InsertarCliente('Daniel Anderson', 'danielanderson@example.com', '852963741');
CALL InsertarCliente('Sophia Martinez', 'sophiamartinez@example.com', '369852147');
CALL InsertarCliente('Andrew Robinson', 'andrewrobinson@example.com', '258741369');
CALL InsertarCliente('Isabella Clark', 'isabellaclark@example.com', '147258369');
CALL InsertarCliente('William Rodriguez', 'williamrodriguez@example.com', '963741852');
CALL InsertarCliente('Ava Lewis', 'avalewis@example.com', '632587419');
CALL InsertarCliente('James Lee', 'jameslee@example.com', '419632587');

/*INSERTAR PRESTAMOS*/
CALL InsertarPrestamo('e402e8ed-d65a-11ee-8f28-601895385c54', '2024-01-01', '2024-01-07', 'Activo');
CALL InsertarPrestamo('e680eb6d-d65a-11ee-8f28-601895385c54', '2024-01-02', '2024-01-08', 'Inactivo');
CALL InsertarPrestamo('e68179b0-d65a-11ee-8f28-601895385c54', '2024-01-03', '2024-01-09', 'Activo');
CALL InsertarPrestamo('e681f679-d65a-11ee-8f28-601895385c54', '2024-01-04', '2024-01-10', 'Inactivo');
CALL InsertarPrestamo('e6827bc6-d65a-11ee-8f28-601895385c54', '2024-01-05', '2024-01-11', 'Activo');
CALL InsertarPrestamo('e682ebd4-d65a-11ee-8f28-601895385c54', '2024-01-06', '2024-01-12', 'Inactivo');
CALL InsertarPrestamo('e683604b-d65a-11ee-8f28-601895385c54', '2024-01-07', '2024-01-13', 'Activo');
CALL InsertarPrestamo('e683d190-d65a-11ee-8f28-601895385c54', '2024-01-08', '2024-01-14', 'Inactivo');
CALL InsertarPrestamo('e68434ee-d65a-11ee-8f28-601895385c54', '2024-01-09', '2024-01-15', 'Activo');
CALL InsertarPrestamo('e684ab3a-d65a-11ee-8f28-601895385c54', '2024-01-10', '2024-01-16', 'Inactivo');
CALL InsertarPrestamo('e6851114-d65a-11ee-8f28-601895385c54', '2024-01-11', '2024-01-17', 'Activo');
CALL InsertarPrestamo('e6856e22-d65a-11ee-8f28-601895385c54', '2024-01-12', '2024-01-18', 'Inactivo');
CALL InsertarPrestamo('e685bdf3-d65a-11ee-8f28-601895385c54', '2024-01-13', '2024-01-19', 'Activo');
CALL InsertarPrestamo('e6860a6c-d65a-11ee-8f28-601895385c54', '2024-01-14', '2024-01-20', 'Inactivo');
CALL InsertarPrestamo('e68657dd-d65a-11ee-8f28-601895385c54', '2024-01-15', '2024-01-21', 'Activo');

/*INSERTAR GENERO LIBROS*/
CALL InsertarGeneroLibro('Fantasía');
CALL InsertarGeneroLibro('Ciencia ficción');
CALL InsertarGeneroLibro('Romance');
CALL InsertarGeneroLibro('Misterio');
CALL InsertarGeneroLibro('Aventura');
CALL InsertarGeneroLibro('Histórico');
CALL InsertarGeneroLibro('Suspenso');
CALL InsertarGeneroLibro('Drama');
CALL InsertarGeneroLibro('Comedia');
CALL InsertarGeneroLibro('Terror');
CALL InsertarGeneroLibro('Poesía');
CALL InsertarGeneroLibro('Infantil');
CALL InsertarGeneroLibro('Autoayuda');
CALL InsertarGeneroLibro('Biografía');
CALL InsertarGeneroLibro('Cocina');

/*INSERTAR LIBROS */
CALL InsertarLibro('Libro 1', 2020, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Fantasía'), 'Disponible');
CALL InsertarLibro('Libro 2', 2018, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Ciencia ficción'), 'Prestado');
CALL InsertarLibro('Libro 3', 2015, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Romance'), 'Disponible');
CALL InsertarLibro('Libro 4', 2019, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Misterio'), 'Disponible');
CALL InsertarLibro('Libro 5', 2021, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Aventura'), 'Prestado');
CALL InsertarLibro('Libro 6', 2017, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Histórico'), 'Disponible');
CALL InsertarLibro('Libro 7', 2014, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Suspenso'), 'Disponible');
CALL InsertarLibro('Libro 8', 2022, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Drama'), 'Prestado');
CALL InsertarLibro('Libro 9', 2016, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Comedia'), 'Disponible');
CALL InsertarLibro('Libro 10', 2023, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Terror'), 'Prestado');
CALL InsertarLibro('Libro 11', 2013, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Poesía'), 'Disponible');
CALL InsertarLibro('Libro 12', 2011, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Infantil'), 'Disponible');
CALL InsertarLibro('Libro 13', 2019, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Autoayuda'), 'Prestado');
CALL InsertarLibro('Libro 14', 2017, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Biografía'), 'Disponible');
CALL InsertarLibro('Libro 15', 2020, (SELECT id_genero_libro FROM tb_generos_libros WHERE nombre_genero_libro = 'Cocina'), 'Disponible');

/*tb Detalle Prestamos*/
CALL InsertarDetallePrestamo('98c9105a-d65c-11ee-b99f-b04f13083500', '98c9105a-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');
CALL InsertarDetallePrestamo('98c9e40e-d65c-11ee-b99f-b04f13083500', '98c99bac-d65c-11ee-b99f-b04f13083500');

