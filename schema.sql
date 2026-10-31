-- =====================================================
-- VEXORA E-COMMERCE
-- =====================================================

-- 1. Clientes
CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    telefono VARCHAR(20),
    direccion TEXT,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Categorías
CREATE TABLE categorias (
    categoria_id SERIAL PRIMARY KEY,
    nombre_categoria VARCHAR(100) NOT NULL,
    descripcion TEXT
);

-- 3. Productos
CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre_producto VARCHAR(150) NOT NULL,
    categoria_id INT REFERENCES categorias(categoria_id),
    precio DECIMAL(10,2) NOT NULL CHECK (precio > 0),
    stock INT NOT NULL DEFAULT 0 CHECK (stock >= 0),
    estado BOOLEAN DEFAULT TRUE
);

-- 4. Pedidos
CREATE TABLE pedidos (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES clientes(cliente_id),
    fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2) DEFAULT 0.00,
    estado_pedido VARCHAR(30) DEFAULT 'Pendiente'
);

-- 5. Detalle de Pedidos
CREATE TABLE detalle_pedidos (
    detalle_id SERIAL PRIMARY KEY,
    pedido_id INT REFERENCES pedidos(pedido_id) ON DELETE CASCADE,
    producto_id INT REFERENCES productos(producto_id),
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio_unitario DECIMAL(10,2) NOT NULL
);

-- 6. Métodos de Pago
CREATE TABLE metodos_pago (
    metodo_id SERIAL PRIMARY KEY,
    nombre_metodo VARCHAR(50) NOT NULL
);

-- 7. Pagos
CREATE TABLE pagos (
    pago_id SERIAL PRIMARY KEY,
    pedido_id INT REFERENCES pedidos(pedido_id) ON DELETE CASCADE,
    metodo_id INT REFERENCES metodos_pago(metodo_id),
    monto DECIMAL(10,2) NOT NULL CHECK (monto > 0),
    fecha_pago TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado_pago VARCHAR(30) DEFAULT 'Completado'
);

-- 8. Envíos 
CREATE TABLE envios (
    envio_id SERIAL PRIMARY KEY,
    pedido_id INT REFERENCES pedidos(pedido_id) ON DELETE CASCADE,
    empresa_transporte VARCHAR(100) NOT NULL,
    numero_guia VARCHAR(100) UNIQUE NOT NULL,
    fecha_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_entrega_estimada DATE,
    estado_envio VARCHAR(30) DEFAULT 'En preparación'
);

-- 9. Devoluciones
CREATE TABLE devoluciones (
    devolucion_id SERIAL PRIMARY KEY,
    pedido_id INT REFERENCES pedidos(pedido_id),
    producto_id INT REFERENCES productos(producto_id),
    motivo TEXT NOT NULL,
    fecha_solicitud TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(30) DEFAULT 'En proceso'
);