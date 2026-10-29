
USE hotel;

CREATE TABLE clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellidos VARCHAR(80) NOT NULL,
  email VARCHAR(100) UNIQUE,
  telefono VARCHAR(20),
  pais VARCHAR(40)
);