-- ==========================================================
-- Script de Datos de Prueba (Inserts) - Vexora E-commerce
-- ==========================================================

-- 1. Insertar Clientes
INSERT INTO clientes (nombre, email, telefono, direccion) VALUES
('Carlos Mendoza', 'carlos.mendoza@email.com', '7890-1234', 'San Salvador, Colonia Escalón'),
('Sofía Rivas', 'sofia.rivas@email.com', '7234-5678', 'Santa Ana, El Congo'),
('Mateo Granados', 'mateo.g@email.com', '7456-7890', 'San Miguel, Barrio El Calvario'),
('Lucía Fuentes', 'lucia.fuentes@email.com', '7112-3344', 'La Libertad, Puerto de La Libertad');

-- 2. Insertar Categorías
INSERT INTO categorias (nombre_categoria, descripcion) VALUES
('Electrónica', 'Dispositivos tecnológicos, accesorios y gadgets'),
('Ropa y Moda', 'Indumentaria para hombres y mujeres'),
('Hogar y Cocina', 'Artículos de uso diario y decoración para el hogar');

-- 3. Insertar Productos
INSERT INTO productos (nombre_producto, categoria_id, precio, stock, estado) VALUES
('Audífonos Inalámbricos Bluetooth', 1, 45.50, 25, TRUE),
('Smartwatch Deportivo', 1, 89.99, 15, TRUE),
('Camisa Casual de Algodón', 2, 22.00, 40, TRUE),
('Pantalón Jeans Slim Fit', 2, 35.00, 30, TRUE),
('Cafetera Eléctrica Programable', 3, 65.00, 10, TRUE),
('Set de Sartenes Antiadherentes', 3, 48.00, 18, TRUE);

-- 4. Insertar Métodos de Pago
INSERT INTO metodos_pago (nombre_metodo) VALUES
('Tarjeta de Crédito / Débito'),
('Transferencia Bancaria'),
('Pago Contra Entrega (Efectivo)');

-- 5. Insertar Pedidos
INSERT INTO pedidos (cliente_id, total, estado_pedido) VALUES
(1, 135.49, 'Completado'),
(2, 57.00, 'En proceso'),
(3, 65.00, 'Pendiente');

-- 6. Insertar Detalle de Pedidos
INSERT INTO detalle_pedidos (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 45.50), -- Audífonos
(1, 2, 1, 89.99), -- Smartwatch
(2, 3, 1, 22.00), -- Camisa
(2, 4, 1, 35.00), -- Pantalón
(3, 5, 1, 65.00); -- Cafetera

-- 7. Insertar Pagos
INSERT INTO pagos (pedido_id, metodo_id, monto, estado_pago) VALUES
(1, 1, 135.49, 'Completado'),
(2, 2, 57.00, 'Completado');

-- 8. Insertar Envíos
INSERT INTO envios (pedido_id, empresa_transporte, numero_guia, estado_envio) VALUES
(1, 'GuateDirect Express', 'GT-987654321', 'Entregado'),
(2, 'Cargo Expreso', 'CE-123456789', 'En ruta de reparto');

-- 9. Insertar Devoluciones (Ejemplo de postventa)
INSERT INTO devoluciones (pedido_id, producto_id, motivo, estado) VALUES
(2, 3, 'La talla seleccionada resultó ser muy pequeña para el cliente.', 'Aprobada');