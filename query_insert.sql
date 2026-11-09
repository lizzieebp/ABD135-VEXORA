
-- Insertar 10 Clientes
INSERT INTO clientes (nombre, email, telefono, direccion) VALUES
('Carlos Mendoza', 'carlos.mendoza@email.com', '7890-1234', 'San Salvador, Colonia Escalón'),
('Sofia Rivas', 'sofia.rivas@email.com', '7234-5678', 'Santa Ana, El Congo'),
('Mateo Granados', 'mateo.g@email.com', '7456-7890', 'San Miguel, Barrio El Calvario'),
('Lucía Fuentes', 'lucia.fuentes@email.com', '7112-3344', 'La Libertad, Puerto de La Libertad'),
('Jorge Campos', 'jorge.campos@email.com', '7999-8888', 'San Salvador, San Benito'),
('Ana Martinez', 'ana.martinez@email.com', '7333-2222', 'Sonsonate, Centro'),
('Luis Herrera', 'luis.herrera@email.com', '7555-4444', 'Ahuachapán, Ataco'),
('Carmen Castro', 'carmen.castro@email.com', '7777-6666', 'Santa Tecla, Merliot'),
('Diego Blanco', 'diego.blanco@email.com', '7222-1111', 'La Paz, Zacatecoluca'),
('Elena Morales', 'elena.morales@email.com', '7888-9999', 'Cuscatlán, Cojutepeque');

-- Insertar 10 Categorías
INSERT INTO categorias (nombre_categoria, descripcion) VALUES
('Electrónica', 'Dispositivos tecnológicos, accesorios y gadgets'),
('Ropa y Moda', 'Indumentaria para hombres y mujeres'),
('Hogar y Cocina', 'Artículos de uso diario y decoración para el hogar'),
('Deportes', 'Equipamiento deportivo y accesorios'),
('Juguetes', 'Juegos y entretenimiento para niños'),
('Libros', 'Literatura, libros académicos y revistas'),
('Salud y Belleza', 'Cuidado personal y cosméticos'),
('Mascotas', 'Alimentos y accesorios para animales'),
('Herramientas', 'Herramientas manuales y eléctricas'),
('Jardinería', 'Plantas, semillas y herramientas de jardín');

-- Insertar 10 Productos
INSERT INTO productos (nombre_producto, categoria_id, precio, stock, estado) VALUES
('Audífonos Inalámbricos Bluetooth', 1, 45.50, 25, TRUE),
('Smartwatch Deportivo', 1, 89.99, 15, TRUE),
('Camisa Casual de Algodón', 2, 22.00, 40, TRUE),
('Pantalón Jeans Slim Fit', 2, 35.00, 30, TRUE),
('Cafetera Eléctrica Programable', 3, 65.00, 10, TRUE),
('Set de Sartenes Antiadherentes', 3, 48.00, 18, TRUE),
('Balón de Fútbol', 4, 25.00, 50, TRUE),
('Set de Lego Classic', 5, 55.00, 20, TRUE),
('Libro: Cien Años de Soledad', 6, 15.00, 100, TRUE),
('Crema Hidratante Facial', 7, 18.50, 60, TRUE);

-- Insertar 10 Métodos de Pago
INSERT INTO metodos_pago (nombre_metodo) VALUES
('Tarjeta de Crédito / Débito'),
('Transferencia Bancaria'),
('Pago Contra Entrega (Efectivo)'),
('PayPal'),
('Bitcoin / Criptomonedas'),
('Apple Pay'),
('Google Pay'),
('Chivo Wallet'),
('Tigo Money'),
('Tarjeta de Regalo Vexora');

-- Insertar 10 Pedidos
INSERT INTO pedidos (cliente_id, total, estado_pedido) VALUES
(1, 135.49, 'Completado'),
(2, 57.00, 'En proceso'),
(3, 65.00, 'Pendiente'),
(4, 25.00, 'Completado'),
(5, 55.00, 'En proceso'),
(6, 15.00, 'Pendiente'),
(7, 18.50, 'Completado'),
(8, 45.50, 'En proceso'),
(9, 89.99, 'Pendiente'),
(10, 113.00, 'Completado');

-- Insertar 10 Detalles de Pedidos
INSERT INTO detalle_pedidos (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 45.50),
(1, 2, 1, 89.99),
(2, 3, 1, 22.00),
(2, 4, 1, 35.00),
(3, 5, 1, 65.00),
(4, 7, 1, 25.00),
(5, 8, 1, 55.00),
(6, 9, 1, 15.00),
(7, 10, 1, 18.50),
(10, 5, 1, 65.00);

-- Insertar 10 Pagos
INSERT INTO pagos (pedido_id, metodo_id, monto, estado_pago) VALUES
(1, 1, 135.49, 'Completado'),
(2, 2, 57.00, 'Completado'),
(3, 3, 65.00, 'Pendiente'),
(4, 4, 25.00, 'Completado'),
(5, 5, 55.00, 'Completado'),
(6, 8, 15.00, 'Pendiente'),
(7, 1, 18.50, 'Completado'),
(8, 2, 45.50, 'Completado'),
(9, 3, 89.99, 'Pendiente'),
(10, 4, 113.00, 'Completado');

-- Insertar 10 Envíos
INSERT INTO envios (pedido_id, empresa_transporte, numero_guia, estado_envio) VALUES
(1, 'GuateDirect Express', 'GT-987654321', 'Entregado'),
(2, 'Cargo Expreso', 'CE-123456789', 'En ruta de reparto'),
(3, 'Urbano', 'UR-111111111', 'Pendiente'),
(4, 'DHL', 'DHL-222222222', 'Entregado'),
(5, 'FedEx', 'FDX-333333333', 'En ruta de reparto'),
(6, 'Correos de El Salvador', 'SV-444444444', 'Pendiente'),
(7, 'GuateDirect Express', 'GT-555555555', 'Entregado'),
(8, 'Cargo Expreso', 'CE-666666666', 'En preparación'),
(9, 'Urbano', 'UR-777777777', 'Pendiente'),
(10, 'DHL', 'DHL-888888888', 'Entregado');

-- Insertar 10 Devoluciones
INSERT INTO devoluciones (pedido_id, producto_id, motivo, estado) VALUES
(2, 3, 'La talla seleccionada resultó ser muy pequeña para el cliente.', 'Aprobada'),
(1, 1, 'El audífono izquierdo no sincroniza por Bluetooth.', 'En revisión'),
(4, 7, 'El balón llegó desinflado y con una costura rota.', 'Aprobada'),
(5, 8, 'Faltan piezas en el set de Lego.', 'Pendiente'),
(7, 10, 'El producto llegó vencido.', 'Aprobada'),
(10, 5, 'La cafetera no enciende.', 'En revisión'),
(1, 2, 'El cliente se arrepintió de la compra.', 'Rechazada'),
(2, 4, 'El color del pantalón no es el esperado.', 'Pendiente'),
(8, 1, 'Caja dañada durante el transporte.', 'Aprobada'),
(4, 7, 'Envío duplicado por error del sistema.', 'Aprobada');