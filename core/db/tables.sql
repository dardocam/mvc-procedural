DROP TABLE IF EXISTS Comentario;
DROP TABLE IF EXISTS Producto;
DROP TABLE IF EXISTS Usuario;


CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,           -- Identificador único de usuario
    nombre VARCHAR(100) NOT NULL,                -- Nombre del usuario
    apellido VARCHAR(100) NOT NULL,              -- Apellido del usuario
    email VARCHAR(150) NOT NULL UNIQUE,          -- Correo electrónico único
    username VARCHAR(50) NOT NULL UNIQUE,        -- Nombre de usuario único
    password_hash VARCHAR(255) NOT NULL,         -- Contraseña encriptada (hash)
    telefono VARCHAR(20),                        -- Número de teléfono opcional
    direccion VARCHAR(255),                      -- Dirección opcional
    fecha_nacimiento DATE,                       -- Fecha de nacimiento opcional
    rol ENUM('admin', 'usuario', 'moderador') DEFAULT 'usuario', -- Rol de usuario
    estado ENUM('activo', 'inactivo', 'suspendido') DEFAULT 'activo', -- Estado del usuario
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación del registro
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Fecha de última actualización del registro
    ultimo_login TIMESTAMP,                      -- Fecha y hora del último inicio de sesión
    token_recuperacion VARCHAR(255),             -- Token para recuperación de contraseña
    token_expiracion TIMESTAMP                   -- Fecha de expiración del token de recuperación
);

CREATE TABLE Producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,            -- Identificador único del producto
    fk_id_usuario INT NOT NULL,                      -- ID del usuario que creó el producto
    nombre VARCHAR(150) NOT NULL,                 -- Nombre del producto
    descripcion TEXT,                             -- Descripción del producto
    precio DECIMAL(10, 2) NOT NULL,               -- Precio del producto
    stock INT DEFAULT 0,                          -- Cantidad disponible del producto
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de creación
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Última actualización
    
    FOREIGN KEY (fk_id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE -- Relación con Usuario
);


CREATE TABLE Comentario (
    id_comentario INT AUTO_INCREMENT PRIMARY KEY,            -- Identificador único del comentario
    fk_id_usuario INT NOT NULL,                      -- ID del usuario que realiza el comentario
    fk_id_producto INT NOT NULL,                     -- ID del producto comentado
    comentario TEXT NOT NULL,                     -- Texto del comentario
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    -- Fecha y hora del comentario
    
    FOREIGN KEY (fk_id_usuario) REFERENCES Usuario(id_usuario) ON DELETE CASCADE, -- Relación con Usuario
    FOREIGN KEY (fk_id_producto) REFERENCES Producto(id_producto) ON DELETE CASCADE -- Relación con Producto
);

