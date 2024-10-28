-- Insertar usuarios en la tabla Usuario
INSERT INTO Usuario (nombre, apellido, email, username, password_hash, telefono, direccion, fecha_nacimiento, rol, estado)
VALUES 
    ('Juan', 'Perez', 'juan.perez@example.com', 'juan_perez', '$2a$12$examplehashfordemo1', '123456789', '123 Calle Falsa', '1990-01-15', 'admin', 'activo'),
    ('Maria', 'Gomez', 'maria.gomez@example.com', 'maria_gomez', '$2a$12$examplehashfordemo2', '987654321', '456 Avenida Siempreviva', '1985-05-20', 'moderador', 'activo'),
    ('Luis', 'Lopez', 'luis.lopez@example.com', 'luis_lopez', '$2a$12$examplehashfordemo3', '1122334455', '789 Camino Real', '1992-07-30', 'usuario', 'activo');

-- Insertar productos en la tabla Producto
INSERT INTO Producto (fk_id_usuario, nombre, descripcion, precio, stock)
VALUES 
    (1, 'Laptop Gamer', 'Laptop con alta capacidad gráfica para videojuegos', 1200.00, 10),
    (1, 'Smartphone Pro', 'Teléfono inteligente con cámara de alta resolución y buena capacidad de almacenamiento', 800.00, 20),
    (2, 'Monitor UltraWide', 'Monitor de 34 pulgadas con resolución ultra ancha, ideal para multitarea', 500.00, 15),
    (2, 'Teclado Mecánico', 'Teclado mecánico retroiluminado con switches táctiles', 70.00, 30),
    (3, 'Audífonos Bluetooth', 'Audífonos inalámbricos con cancelación de ruido y batería de larga duración', 150.00, 25),
    (3, 'Cámara de Acción', 'Cámara resistente al agua con grabación en 4K y estabilización de imagen', 200.00, 12),
    (1, 'Drone Profesional', 'Drone de alta calidad con cámara de 1080p, ideal para fotografía aérea', 750.00, 8),
    (2, 'Tablet 10 pulgadas', 'Tablet con pantalla de 10 pulgadas, ideal para leer y ver videos', 300.00, 18),
    (3, 'Smartwatch Deportivo', 'Reloj inteligente resistente al agua con funciones deportivas avanzadas', 180.00, 40),
    (1, 'Consola de Videojuegos', 'Consola de videojuegos de última generación, incluye control y cables', 450.00, 5);

-- Insertar comentarios en la tabla Comentario
INSERT INTO Comentario (fk_id_usuario, fk_id_producto, comentario)
VALUES 
    (2, 1, 'Excelente laptop para gaming, la gráfica es impresionante.'),
    (3, 1, '¿Qué tan buena es la batería en esta laptop?'),
    (1, 2, 'Gran smartphone, la cámara es realmente buena para el precio.'),
    (2, 3, 'Este monitor es perfecto para trabajar con varias ventanas abiertas.'),
    (3, 4, 'El teclado es cómodo para largas sesiones de escritura.'),
    (1, 5, 'Estos audífonos tienen una buena calidad de sonido.'),
    (2, 6, 'Ideal para deportes extremos, muy resistente.'),
    (3, 7, 'La calidad del video es muy buena, ideal para principiantes en fotografía aérea.'),
    (1, 8, 'Perfecta para leer y ver contenido, de buen tamaño.'),
    (3, 9, 'Este smartwatch es excelente para seguimiento deportivo y notificaciones.');


