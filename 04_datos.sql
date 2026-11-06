USE hotel;

INSERT INTO habitaciones (numero, tipo, precio_noche) VALUES
  ('101', 'individual', 85.00),
  ('102', 'doble', 120.00),
  ('201', 'suite', 240.00);

INSERT INTO clientes (nombre, apellidos, email, pais) VALUES
  ('Aoife', 'Murphy', 'aoife@ejemplo.com', 'Irlanda'),
  ('Lucía', 'García López', 'lucia@ejemplo.com', 'España');

INSERT INTO reservas (cliente_id, habitacion_id, fecha_entrada, fecha_salida) VALUES
  (1, 2, '2026-11-14', '2026-11-17'),
  (2, 3, '2026-12-20', '2026-12-27');