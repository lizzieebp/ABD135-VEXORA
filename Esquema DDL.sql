
-- Creación de tabla clientes
CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    direccion TEXT,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creación de tabla categorias
CREATE TABLE categorias (
    categoria_id SERIAL PRIMARY KEY,
    nombre_categoria VARCHAR(100) NOT NULL UNIQUE,
    descripcion TEXT
);

-- Creación de tabla productos
CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre_producto VARCHAR(150) NOT NULL,
    categoria_id INTEGER REFERENCES categorias (categoria_id),
    precio NUMERIC(10,2) NOT NULL CHECK (precio > 0),
    stock INTEGER NOT NULL CHECK (stock >= 0),
    estado BOOLEAN DEFAULT TRUE
);

-- Creación de tabla pedidos
CREATE TABLE pedidos (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INTEGER REFERENCES clientes (cliente_id),
    fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total NUMERIC(10,2) NOT NULL CHECK (total >= 0),
    estado_pedido VARCHAR(30) NOT NULL
);

-- Creación de tabla detalle_pedidos
CREATE TABLE detalle_pedidos (
    detalle_id SERIAL PRIMARY KEY,
    pedido_id INTEGER REFERENCES pedidos (pedido_id),
    producto_id INTEGER REFERENCES productos (producto_id),
    cantidad INTEGER NOT NULL CHECK (cantidad > 0),
    precio_unitario NUMERIC(10,2) NOT NULL CHECK (precio_unitario >= 0)
);

-- Creación de tabla metodos_pago
CREATE TABLE metodos_pago (
    metodo_id SERIAL PRIMARY KEY,
    nombre_metodo VARCHAR(50) NOT NULL UNIQUE
);

-- Creación de tabla pagos
CREATE TABLE pagos (
    pago_id SERIAL PRIMARY KEY,
    pedido_id INTEGER REFERENCES pedidos (pedido_id),
    metodo_id INTEGER REFERENCES metodos_pago(metodo_id),
    monto NUMERIC(10,2) NOT NULL CHECK (monto > 0),
    fecha_pago TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado_pago VARCHAR(30) NOT NULL
);

-- Creación de tabla envios
CREATE TABLE envios (
    envio_id SERIAL PRIMARY KEY,
    pedido_id INTEGER REFERENCES pedidos (pedido_id),
    empresa_transporte VARCHAR(100) NOT NULL,
    numero_guia VARCHAR(100) UNIQUE,
    fecha_envio TIMESTAMP,
    fecha_entrega_estimada DATE,
    estado_envio VARCHAR(30) NOT NULL
);

-- Creación de tabla devoluciones
CREATE TABLE devoluciones (
    devolucion_id SERIAL PRIMARY KEY,
    pedido_id INTEGER REFERENCES pedidos (pedido_id),
    producto_id INTEGER REFERENCES productos (producto_id),
    motivo TEXT NOT NULL,
    fecha_solicitud TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(30) NOT NULL
);