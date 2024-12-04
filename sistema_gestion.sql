-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2024 a las 18:34:17
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_gestion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confirmacionorden`
--

CREATE TABLE `confirmacionorden` (
  `id_confirmacion` int(11) NOT NULL,
  `id_orden_compra` int(11) NOT NULL,
  `fecha_confirmacion` date DEFAULT NULL,
  `fecha_entrega_real` date DEFAULT NULL,
  `estado_confirmacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `confirmacionorden`
--

INSERT INTO `confirmacionorden` (`id_confirmacion`, `id_orden_compra`, `fecha_confirmacion`, `fecha_entrega_real`, `estado_confirmacion`) VALUES
(1, 1, '2024-11-18', '2024-11-24', 'Confirmado'),
(2, 2, '2024-11-18', '2024-11-22', 'Pendiente'),
(3, 3, '2024-11-18', '2024-11-29', 'Cancelado'),
(4, 4, '2024-11-18', '2024-11-22', 'Confirmado'),
(5, 5, '2024-11-18', '2024-11-26', 'Pendiente'),
(6, 6, '2024-11-18', '2024-11-23', 'Confirmado'),
(7, 7, '2024-11-18', '2024-11-20', 'Confirmado'),
(8, 8, '2024-11-18', '2024-12-04', 'Cancelado'),
(9, 9, '2024-11-18', '2024-11-23', 'Confirmado'),
(10, 10, '2024-11-18', '2024-11-24', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_disponible` int(11) DEFAULT NULL,
  `ubicacion_almacen` varchar(50) DEFAULT NULL,
  `fecha_ultima_actualizacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `id_producto`, `cantidad_disponible`, `ubicacion_almacen`, `fecha_ultima_actualizacion`) VALUES
(1, 1, 100, 'Almacén Principal - A1', '2024-11-18'),
(2, 2, 20, 'Almacén Secundario - B3', '2024-11-18'),
(3, 3, 50, 'Almacén Principal - A3', '2024-11-18'),
(4, 4, 80, 'Almacén Principal - B1', '2024-11-18'),
(5, 5, 30, 'Almacén Secundario - A2', '2024-11-18'),
(6, 6, 40, 'Almacén Principal - C3', '2024-11-18'),
(7, 7, 25, 'Almacén Principal - D1', '2024-11-18'),
(8, 8, 100, 'Almacén Secundario - B4', '2024-11-18'),
(9, 9, 15, 'Almacén Principal - C1', '2024-11-18'),
(10, 10, 60, 'Almacén Secundario - A5', '2024-11-18'),
(11, 11, 10, 'Almacén Principal - D3', '2024-11-18'),
(12, 12, 70, 'Almacén Principal - A4', '2024-11-18'),
(13, 13, 120, 'Almacén Secundario - C2', '2024-11-18'),
(14, 14, 50, 'Almacén Principal - B5', '2024-11-18'),
(15, 15, 20, 'Almacén Secundario - D4', '2024-11-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notaentrada`
--

CREATE TABLE `notaentrada` (
  `id_nota_entrada` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `ubicacion_almacen` varchar(50) DEFAULT NULL,
  `estado_producto` varchar(50) DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notaentrada`
--

INSERT INTO `notaentrada` (`id_nota_entrada`, `id_producto`, `fecha_entrada`, `cantidad`, `id_proveedor`, `id_usuario`, `ubicacion_almacen`, `estado_producto`, `observaciones`) VALUES
(1, 1, '2024-11-18', 50, 1, 2, 'Almacén Principal - A1', 'Bueno', 'Entrada por compra regular'),
(2, 2, '2024-11-18', 10, 3, 2, 'Almacén Secundario - B3', 'Bueno', 'Reposición'),
(3, 3, '2024-11-18', 30, 2, 2, 'Almacén Principal - A3', 'Bueno', 'Reabastecimiento'),
(4, 4, '2024-11-18', 20, 1, 2, 'Almacén Principal - B1', 'Bueno', 'Compra directa'),
(5, 5, '2024-11-18', 15, 3, 2, 'Almacén Secundario - A2', 'Bueno', 'Nueva adquisición'),
(6, 6, '2024-11-18', 25, 2, 2, 'Almacén Principal - C3', 'Bueno', 'Refuerzo de stock'),
(7, 7, '2024-11-18', 20, 5, 2, 'Almacén Principal - D1', 'Bueno', 'Pedido regular'),
(8, 8, '2024-11-18', 50, 5, 2, 'Almacén Secundario - B4', 'Bueno', 'Reposición por alta demanda'),
(9, 9, '2024-11-18', 10, 4, 2, 'Almacén Principal - C1', 'Bueno', 'Pedido puntual'),
(10, 10, '2024-11-18', 30, 4, 2, 'Almacén Secundario - A5', 'Bueno', 'Stock insuficiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notarecepcion`
--

CREATE TABLE `notarecepcion` (
  `id_nota_recepcion` int(11) NOT NULL,
  `id_orden_compra` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_recepcion` date DEFAULT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_recibida` int(11) DEFAULT NULL,
  `estado_producto` varchar(50) DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notarecepcion`
--

INSERT INTO `notarecepcion` (`id_nota_recepcion`, `id_orden_compra`, `id_usuario`, `fecha_recepcion`, `id_producto`, `cantidad_recibida`, `estado_producto`, `observaciones`) VALUES
(1, 1, 2, '2024-11-18', 1, 100, 'Bueno', 'Recepción completa en almacén principal'),
(2, 2, 2, '2024-11-18', 2, 50, 'Bueno', 'Recepción parcial, pendiente segunda entrega'),
(3, 3, 2, '2024-11-18', 3, 0, 'No Recibido', 'Orden cancelada por proveedor'),
(4, 4, 2, '2024-11-18', 4, 40, 'Bueno', 'Recepción conforme'),
(5, 5, 2, '2024-11-18', 5, 30, 'Bueno', 'Productos en buen estado'),
(6, 6, 2, '2024-11-18', 6, 20, 'Bueno', 'Recepción con observaciones menores'),
(7, 7, 2, '2024-11-18', 7, 25, 'Bueno', 'Entrega urgente en almacén secundario'),
(8, 8, 2, '2024-11-18', 8, 0, 'No Recibido', 'Proveedor no cumplió con la entrega'),
(9, 9, 2, '2024-11-18', 9, 15, 'Bueno', 'Stock recibido sin novedades'),
(10, 10, 2, '2024-11-18', 10, 50, 'Bueno', 'Recepción exitosa para evento promocional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notasalida`
--

CREATE TABLE `notasalida` (
  `id_nota_salida` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_salida` date DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `destinatario` varchar(100) DEFAULT NULL,
  `razon_salida` varchar(100) DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notasalida`
--

INSERT INTO `notasalida` (`id_nota_salida`, `id_producto`, `id_usuario`, `fecha_salida`, `cantidad`, `destinatario`, `razon_salida`, `observaciones`) VALUES
(1, 1, 2, '2024-11-18', 10, 'Supermercado Makro Sucursal 1', 'Venta', 'Salida para sucursal'),
(2, 2, 2, '2024-11-18', 2, 'Tienda Online', 'Venta', 'Orden realizada en la plataforma web'),
(3, 3, 2, '2024-11-18', 15, 'Supermercado Makro Sucursal 2', 'Venta', 'Salida directa por inventario'),
(4, 4, 2, '2024-11-18', 5, 'Cliente Mayorista', 'Venta', 'Pedido especial'),
(5, 5, 2, '2024-11-18', 8, 'Supermercado Makro Sucursal 3', 'Venta', 'Pedido por alta demanda'),
(6, 6, 2, '2024-11-18', 6, 'Distribuidora Regional', 'Venta', 'Despacho para distribución'),
(7, 7, 2, '2024-11-18', 12, 'Sucursal Oeste', 'Venta', 'Pedido corporativo'),
(8, 8, 2, '2024-11-18', 20, 'Sucursal Este', 'Venta', 'Salida por promoción especial'),
(9, 9, 2, '2024-11-18', 25, 'Sucursal Norte', 'Venta', 'Reabastecimiento de inventario'),
(10, 10, 2, '2024-11-18', 30, 'Tienda Principal', 'Venta', 'Pedido urgente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordencompra`
--

CREATE TABLE `ordencompra` (
  `id_orden_compra` int(11) NOT NULL,
  `id_solicitud_compra` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `fecha_orden` date DEFAULT NULL,
  `fecha_entrega_estimada` date DEFAULT NULL,
  `estado_orden` varchar(50) DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ordencompra`
--

INSERT INTO `ordencompra` (`id_orden_compra`, `id_solicitud_compra`, `id_proveedor`, `fecha_orden`, `fecha_entrega_estimada`, `estado_orden`, `observaciones`) VALUES
(1, 1, 1, '2024-11-18', '2024-11-25', 'Confirmada', 'Orden procesada correctamente'),
(2, 2, 2, '2024-11-18', '2024-11-23', 'En Proceso', 'Esperando confirmación del proveedor'),
(3, 3, 3, '2024-11-18', '2024-11-28', 'Cancelada', 'Proveedor no disponible'),
(4, 4, 1, '2024-11-18', '2024-11-22', 'Confirmada', 'Orden lista para entrega'),
(5, 5, 4, '2024-11-18', '2024-11-26', 'En Proceso', 'Pendiente de confirmación'),
(6, 6, 5, '2024-11-18', '2024-11-24', 'Confirmada', 'Stock asegurado por el proveedor'),
(7, 7, 2, '2024-11-18', '2024-11-21', 'Confirmada', 'Entrega express pactada'),
(8, 8, 3, '2024-11-18', '2024-12-03', 'Cancelada', 'Proveedor no cumple con las condiciones'),
(9, 9, 4, '2024-11-18', '2024-11-23', 'Confirmada', 'Entrega prevista para fecha acordada'),
(10, 10, 5, '2024-11-18', '2024-11-25', 'En Proceso', 'Validación final requerida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre_producto`, `categoria`, `precio_unitario`, `id_proveedor`) VALUES
(1, 'Arroz 5kg', 'Alimentos', 25.50, 1),
(2, 'Laptop Pro', 'Electrónica', 1500.00, 3),
(3, 'Aceite Vegetal 1L', 'Alimentos', 8.90, 2),
(4, 'Leche Entera 1L', 'Alimentos', 6.50, 1),
(5, 'Mouse Inalámbrico', 'Electrónica', 45.99, 3),
(6, 'Pan Molde Familiar', 'Alimentos', 12.30, 2),
(7, 'Toner HP 123', 'Papelería', 250.00, 5),
(8, 'Cuaderno A4', 'Papelería', 5.90, 5),
(9, 'Vitaminas C', 'Farmacia', 15.00, 4),
(10, 'Gel Antibacterial 1L', 'Farmacia', 10.00, 4),
(11, 'Teclado Mecánico', 'Electrónica', 120.00, 3),
(12, 'Galletas Integrales', 'Alimentos', 18.50, 2),
(13, 'Resma Papel A4', 'Papelería', 50.00, 5),
(14, 'Pastillas Antigripales', 'Farmacia', 25.00, 4),
(15, 'Batería Portátil', 'Electrónica', 85.00, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_proveedor` varchar(100) NOT NULL,
  `contacto` varchar(50) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre_proveedor`, `contacto`, `direccion`) VALUES
(1, 'Distribuidora Makro', 'contacto@makro.com', 'Av. Comercial 123, Ciudad Central'),
(2, 'Alimentos Global', 'ventas@alimentosglobal.com', 'Calle 45 Norte, Ciudad Sur'),
(3, 'Tecnología Plus', 'soporte@tecnoplus.com', 'Plaza Industrial 12, Ciudad Este'),
(4, 'Farmacia Universal', 'contacto@farmaciauniversal.com', 'Av. Salud 55, Ciudad Oeste'),
(5, 'Papelería y Más', 'info@papeleriaymas.com', 'Zona Comercial 10, Ciudad Norte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudcompra`
--

CREATE TABLE `solicitudcompra` (
  `id_solicitud_compra` int(11) NOT NULL,
  `fecha_solicitud` date DEFAULT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `estado_solicitud` varchar(50) DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitudcompra`
--

INSERT INTO `solicitudcompra` (`id_solicitud_compra`, `fecha_solicitud`, `id_producto`, `cantidad`, `estado_solicitud`, `observaciones`) VALUES
(1, '2024-11-18', 1, 100, 'Pendiente', 'Reabastecimiento para almacén principal'),
(2, '2024-11-18', 2, 50, 'Aprobada', 'Reposición de stock crítico'),
(3, '2024-11-18', 3, 70, 'Rechazada', 'Solicitud excede presupuesto'),
(4, '2024-11-18', 4, 40, 'Pendiente', 'Requerimiento por alta demanda'),
(5, '2024-11-18', 5, 30, 'Aprobada', 'Reabastecimiento general'),
(6, '2024-11-18', 6, 20, 'Pendiente', 'Revisión del jefe de compras'),
(7, '2024-11-18', 7, 25, 'Aprobada', 'Demanda corporativa prevista'),
(8, '2024-11-18', 8, 60, 'Pendiente', 'Reposición necesaria en almacén secundario'),
(9, '2024-11-18', 9, 15, 'Rechazada', 'Producto en exceso en inventario'),
(10, '2024-11-18', 10, 50, 'Aprobada', 'Pedido urgente para evento promocional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `rol` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `contraseña`, `rol`, `email`, `fecha_creacion`, `estado`) VALUES
(1, 'admin', 'admin123', 'Administrador', 'admin@makro.com', '2024-11-18', 'Activo'),
(2, 'inventario_jefe', 'invent2023', 'Encargado de Inventario', 'jefe_inv@makro.com', '2024-11-18', 'Activo'),
(3, 'compras_encargado', 'compra2023', 'Encargado de Compras', 'compra@makro.com', '2024-11-18', 'Activo'),
(4, 'supervisor1', 'supervisor123', 'Supervisor RM', 'sup1@makro.com', '2024-11-18', 'Activo'),
(5, 'supervisor2', 'supervisor456', 'Supervisor RM', 'sup2@makro.com', '2024-11-18', 'Inactivo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `confirmacionorden`
--
ALTER TABLE `confirmacionorden`
  ADD PRIMARY KEY (`id_confirmacion`),
  ADD KEY `id_orden_compra` (`id_orden_compra`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `notaentrada`
--
ALTER TABLE `notaentrada`
  ADD PRIMARY KEY (`id_nota_entrada`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `notarecepcion`
--
ALTER TABLE `notarecepcion`
  ADD PRIMARY KEY (`id_nota_recepcion`),
  ADD KEY `id_orden_compra` (`id_orden_compra`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `notasalida`
--
ALTER TABLE `notasalida`
  ADD PRIMARY KEY (`id_nota_salida`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `ordencompra`
--
ALTER TABLE `ordencompra`
  ADD PRIMARY KEY (`id_orden_compra`),
  ADD KEY `id_solicitud_compra` (`id_solicitud_compra`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `solicitudcompra`
--
ALTER TABLE `solicitudcompra`
  ADD PRIMARY KEY (`id_solicitud_compra`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `confirmacionorden`
--
ALTER TABLE `confirmacionorden`
  MODIFY `id_confirmacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `notaentrada`
--
ALTER TABLE `notaentrada`
  MODIFY `id_nota_entrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `notarecepcion`
--
ALTER TABLE `notarecepcion`
  MODIFY `id_nota_recepcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `notasalida`
--
ALTER TABLE `notasalida`
  MODIFY `id_nota_salida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ordencompra`
--
ALTER TABLE `ordencompra`
  MODIFY `id_orden_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `solicitudcompra`
--
ALTER TABLE `solicitudcompra`
  MODIFY `id_solicitud_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `confirmacionorden`
--
ALTER TABLE `confirmacionorden`
  ADD CONSTRAINT `confirmacionorden_ibfk_1` FOREIGN KEY (`id_orden_compra`) REFERENCES `ordencompra` (`id_orden_compra`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `notaentrada`
--
ALTER TABLE `notaentrada`
  ADD CONSTRAINT `notaentrada_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `notaentrada_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  ADD CONSTRAINT `notaentrada_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `notarecepcion`
--
ALTER TABLE `notarecepcion`
  ADD CONSTRAINT `notarecepcion_ibfk_1` FOREIGN KEY (`id_orden_compra`) REFERENCES `ordencompra` (`id_orden_compra`),
  ADD CONSTRAINT `notarecepcion_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `notarecepcion_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `notasalida`
--
ALTER TABLE `notasalida`
  ADD CONSTRAINT `notasalida_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `notasalida_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `ordencompra`
--
ALTER TABLE `ordencompra`
  ADD CONSTRAINT `ordencompra_ibfk_1` FOREIGN KEY (`id_solicitud_compra`) REFERENCES `solicitudcompra` (`id_solicitud_compra`),
  ADD CONSTRAINT `ordencompra_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `solicitudcompra`
--
ALTER TABLE `solicitudcompra`
  ADD CONSTRAINT `solicitudcompra_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
