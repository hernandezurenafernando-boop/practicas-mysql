USE hotel;

-- 1. Habitaciones de más de 100 € la noche
SELECT numero, tipo, precio_noche
FROM habitaciones
WHERE precio_noche > 100
ORDER BY precio_noche DESC;

-- 2. Reservas con el nombre del cliente y el número de habitación
SELECT c.nombre, c.apellidos, h.numero, r.fecha_entrada, r.fecha_salida
FROM reservas r
JOIN clientes c ON c.id = r.cliente_id
JOIN habitaciones h ON h.id = r.habitacion_id;

-- 3. Noches y precio total de cada reserva
SELECT r.id,
       DATEDIFF(r.fecha_salida, r.fecha_entrada) AS noches,
       DATEDIFF(r.fecha_salida, r.fecha_entrada) * h.precio_noche AS total
FROM reservas r
JOIN habitaciones h ON h.id = r.habitacion_id;