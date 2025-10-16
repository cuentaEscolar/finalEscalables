CREATE DATABASE IF NOT EXISTS speedColaDB;
USE speedColaDB;

-- Tabla: usuarios
CREATE TABLE usuarios (
    idUsuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    contrasenia VARCHAR(255) NOT NULL,
    telefono VARCHAR(20),
    rol INT NOT NULL,
    fotoPerfil VARCHAR(255),
    calificacion FLOAT
);

-- Tabla: categoria
CREATE TABLE categoria (
    idCategoria INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL
);

-- Tabla: servicios
CREATE TABLE servicios (
    idServicio INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255),
    precio FLOAT NOT NULL,
    duracionEstimada VARCHAR(255) NOT NULL,
    imagen VARCHAR(255), 
    idUsuario INT NOT NULL,
    idCategoria INT NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario),
    FOREIGN KEY (idCategoria) REFERENCES categoria(idCategoria)
);

-- Tabla: citas
CREATE TABLE citas (
    idCita INT AUTO_INCREMENT PRIMARY KEY,
    fecha TIMESTAMP NOT NULL,
    idCliente INT NOT NULL,
    idProveedor INT NOT NULL,
    idServicio INT NOT NULL,
    estado VARCHAR(50),
    FOREIGN KEY (idCliente) REFERENCES usuarios(idUsuario),
    FOREIGN KEY (idProveedor) REFERENCES usuarios(idUsuario),
    FOREIGN KEY (idServicio) REFERENCES servicios(idServicio)
);

-- Tabla: contrato
CREATE TABLE contrato (
    idCita INT PRIMARY KEY,
    fecha TIMESTAMP NOT NULL,
    idCliente INT NOT NULL,
    idProveedor INT NOT NULL,
    idServicio INT NOT NULL,
    costo FLOAT NOT NULL,
    especificaciones VARCHAR(255),
    FOREIGN KEY (idCita) REFERENCES citas(idCita),
    FOREIGN KEY (idCliente) REFERENCES usuarios(idUsuario),
    FOREIGN KEY (idProveedor) REFERENCES usuarios(idUsuario),
    FOREIGN KEY (idServicio) REFERENCES servicios(idServicio)
);

-- Tabla: chats
CREATE TABLE chats (
    idChat INT AUTO_INCREMENT PRIMARY KEY,
    fechaCreacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    idCita INT,
    idCliente INT,
    idProveedor INT,
    FOREIGN KEY (idCita) REFERENCES citas(idCita),
    FOREIGN KEY (idCliente) REFERENCES usuarios(idUsuario),
    FOREIGN KEY (idProveedor) REFERENCES usuarios(idUsuario)
);

-- Tabla: mensajes
CREATE TABLE mensajes (
    idMensaje INT AUTO_INCREMENT PRIMARY KEY,
    idChat INT NOT NULL,
    idUsuario INT NOT NULL,
    contenido VARCHAR(1000) NOT NULL,
    timestampEnvio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idChat) REFERENCES chats(idChat),
    FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario)
);

-- Tabla: resenaUsuario
CREATE TABLE resenaUsuario (
    idProveedor INT NOT NULL,
    idUsuario INT NOT NULL,
    puntuacion FLOAT,
    comentarios VARCHAR(500),
    PRIMARY KEY (idProveedor, idUsuario),
    FOREIGN KEY (idProveedor) REFERENCES usuarios(idUsuario),
    FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario)
);

-- Tabla: resenaProveedor
CREATE TABLE resenaProveedor (
    idUsuario INT NOT NULL,
    idProveedor INT NOT NULL,
    puntuacion FLOAT,
    comentarios VARCHAR(500),
    PRIMARY KEY (idUsuario, idProveedor),
    FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario),
    FOREIGN KEY (idProveedor) REFERENCES usuarios(idUsuario)
);

