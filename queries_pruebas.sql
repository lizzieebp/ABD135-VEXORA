
-- 1. VERIFICACIÓN DE VENTAS Y PEDIDOS POR CLIENTE
SELECT 
    p.pedido_id, 
    c.nombre AS cliente, 
    p.fecha_pedido, 
    p.total, 
    p.estado_pedido
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.cliente_id;

-- 2. DESGLOSE DE PRODUCTOS COMPRADOS EN CADA PEDIDO
SELECT 
    p.pedido_id,
    pr.nombre_producto,
    dp.cantidad,
    dp.precio_unitario,
    (dp.cantidad * dp.precio_unitario) AS subtotal
FROM detalle_pedidos dp
JOIN pedidos p ON dp.pedido_id = p.pedido_id
JOIN productos pr ON dp.producto_id = pr.producto_id;

-- 3. CONTROL Y CAMBIOS DE INVENTARIO
SELECT 
    producto_id, 
    nombre_producto, 
    stock, 
    precio,
    CASE WHEN stock > 0 THEN 'Disponible' ELSE 'Agotado' END AS estado_stock
FROM productos;

-- 4. CONSULTA DE DEVOLUCIONES Y ESTADO POSTVENTA
SELECT 
    d.devolucion_id,
    d.pedido_id,
    p.nombre_producto,
    d.motivo,
    d.estado AS estado_devolucion
FROM devoluciones d
JOIN productos p ON d.producto_id = p.producto_id;