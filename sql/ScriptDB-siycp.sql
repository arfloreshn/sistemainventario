-- --------------------------------------------------------
-- Host:                         192.168.1.130
-- Versión del servidor:         5.6.14 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para siycp_jr
CREATE DATABASE IF NOT EXISTS `siycp_jr` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `siycp_jr`;


-- Volcando estructura para tabla siycp_jr.accesoriosxproducto
CREATE TABLE IF NOT EXISTS `accesoriosxproducto` (
  `id_accesorioxproducto` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_producto` bigint(20) NOT NULL,
  `id_accesorio` bigint(20) NOT NULL,
  PRIMARY KEY (`id_accesorioxproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla siycp_jr.accesoriosxproducto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `accesoriosxproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesoriosxproducto` ENABLE KEYS */;


-- Volcando estructura para tabla siycp_jr.horario_empleados
CREATE TABLE IF NOT EXISTS `horario_empleados` (
  `id_horario` bigint(20) NOT NULL AUTO_INCREMENT,
  `hora_registro` datetime NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  PRIMARY KEY (`id_horario`),
  KEY `FK_horario_empleados_usuarios` (`id_usuario`),
  CONSTRAINT `FK_horario_empleados_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla siycp_jr.horario_empleados: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `horario_empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `horario_empleados` ENABLE KEYS */;


-- Volcando estructura para tabla siycp_jr.inventarios
CREATE TABLE IF NOT EXISTS `inventarios` (
  `id_inventario` bigint(20) NOT NULL AUTO_INCREMENT,
  `cantidad` bigint(20) NOT NULL,
  `minimo_existencia` int(11) NOT NULL,
  `id_producto` bigint(20) NOT NULL,
  PRIMARY KEY (`id_inventario`),
  KEY `FK_inventarios_productos` (`id_producto`),
  CONSTRAINT `FK_inventarios_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla siycp_jr.inventarios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `inventarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventarios` ENABLE KEYS */;


-- Volcando estructura para tabla siycp_jr.pagos
CREATE TABLE IF NOT EXISTS `pagos` (
  `id_pago` bigint(20) NOT NULL AUTO_INCREMENT,
  `cantidad_pago` double NOT NULL,
  `fecha_pago` datetime NOT NULL,
  `id_seguimiento_pago` int(11) NOT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `FK_pagos_seguimiento_pagos` (`id_seguimiento_pago`),
  CONSTRAINT `FK_pagos_seguimiento_pagos` FOREIGN KEY (`id_seguimiento_pago`) REFERENCES `seguimiento_pagos` (`id_seguimiento_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla siycp_jr.pagos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;


-- Volcando estructura para tabla siycp_jr.pedidos
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id_pedido` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_pedido` date NOT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `hora_pedido` time NOT NULL,
  `condiciones` varchar(250) DEFAULT NULL,
  `id_usuario` bigint(20) NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `FK_pedidos_usuarios` (`id_usuario`),
  CONSTRAINT `FK_pedidos_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla siycp_jr.pedidos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;


-- Volcando estructura para tabla siycp_jr.pedidos_productos
CREATE TABLE IF NOT EXISTS `pedidos_productos` (
  `id_pedido_producto` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_pedido` bigint(20) NOT NULL,
  `id_producto` bigint(20) NOT NULL,
  `cantidad` bigint(20) NOT NULL,
  PRIMARY KEY (`id_pedido_producto`),
  KEY `FK_pedidos_productos_pedidos` (`id_pedido`),
  KEY `FK_pedidos_productos_productos` (`id_producto`),
  CONSTRAINT `FK_pedidos_productos_pedidos` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedidos_productos_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla siycp_jr.pedidos_productos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pedidos_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos_productos` ENABLE KEYS */;


-- Volcando estructura para tabla siycp_jr.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `costo` float NOT NULL,
  `precio_general` float NOT NULL,
  `precio_intermedio` float NOT NULL,
  `precio_especial` float NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `cantidad` bigint(20) DEFAULT NULL,
  `id_tipo_medida` int(11) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `FK_productos_tipos_medidas` (`id_tipo_medida`),
  KEY `FK_productos_usuarios` (`id_usuario`),
  CONSTRAINT `FK_productos_tipos_medidas` FOREIGN KEY (`id_tipo_medida`) REFERENCES `tipos_medidas` (`id_tipo_medida`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_productos_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla siycp_jr.productos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;


-- Volcando estructura para tabla siycp_jr.proveedores_productos
CREATE TABLE IF NOT EXISTS `proveedores_productos` (
  `id_proveedor_producto` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_usuario` bigint(20) NOT NULL,
  `id_producto` bigint(20) NOT NULL,
  PRIMARY KEY (`id_proveedor_producto`),
  KEY `FK_proveedores_productos_productos` (`id_producto`),
  KEY `FK_proveedores_productos_usuarios` (`id_usuario`),
  CONSTRAINT `FK_proveedores_productos_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_proveedores_productos_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla siycp_jr.proveedores_productos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `proveedores_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores_productos` ENABLE KEYS */;


-- Volcando estructura para tabla siycp_jr.seguimiento_pagos
CREATE TABLE IF NOT EXISTS `seguimiento_pagos` (
  `id_seguimiento_pago` int(11) NOT NULL AUTO_INCREMENT,
  `total_deuda` double NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  PRIMARY KEY (`id_seguimiento_pago`),
  KEY `FK__usuarios` (`id_usuario`),
  CONSTRAINT `FK__usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla siycp_jr.seguimiento_pagos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `seguimiento_pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `seguimiento_pagos` ENABLE KEYS */;


-- Volcando estructura para tabla siycp_jr.tipos_medidas
CREATE TABLE IF NOT EXISTS `tipos_medidas` (
  `id_tipo_medida` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_medida` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo_medida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla siycp_jr.tipos_medidas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tipos_medidas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipos_medidas` ENABLE KEYS */;


-- Volcando estructura para tabla siycp_jr.users
CREATE TABLE IF NOT EXISTS `users` (
  `user` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `fecha_acceso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_user` varchar(1) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  PRIMARY KEY (`user`),
  KEY `FK_users_usuarios` (`id_usuario`),
  CONSTRAINT `FK_users_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla siycp_jr.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user`, `password`, `fecha_acceso`, `status_user`, `id_usuario`) VALUES
	('admin', 'admin', '2014-02-29 21:55:45', 'a', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Volcando estructura para tabla siycp_jr.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `app` varchar(100) DEFAULT NULL,
  `apm` varchar(100) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `otro_telefono` varchar(250) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `calle` varchar(250) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `colonia` varchar(200) DEFAULT NULL,
  `codigo_postal` int(11) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `tipo_persona` varchar(1) NOT NULL,
  `tipo_cliente` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla siycp_jr.usuarios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id_usuario`, `nombre`, `app`, `apm`, `telefono`, `celular`, `otro_telefono`, `direccion`, `calle`, `numero`, `colonia`, `codigo_postal`, `ciudad`, `estado`, `tipo_persona`, `tipo_cliente`) VALUES
	(1, 'Sergio', 'Cortés', 'Rios', NULL, NULL, NULL, 'México, DF', NULL, NULL, NULL, NULL, NULL, NULL, 'u', '');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;


-- Volcando estructura para tabla siycp_jr.ventas
CREATE TABLE IF NOT EXISTS `ventas` (
  `id_venta` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_venta` date NOT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `hora_venta` time NOT NULL,
  `observaciones` varchar(250) NOT NULL,
  `id_usuario` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla siycp_jr.ventas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;


-- Volcando estructura para tabla siycp_jr.ventas_productos
CREATE TABLE IF NOT EXISTS `ventas_productos` (
  `id_venta_producto` bigint(20) NOT NULL AUTO_INCREMENT,
  `cantidad` bigint(20) NOT NULL,
  `id_producto` bigint(20) NOT NULL,
  `id_venta` bigint(20) NOT NULL,
  PRIMARY KEY (`id_venta_producto`),
  KEY `FK_ventas_productos_ventas` (`id_venta`),
  KEY `FK_ventas_productos_productos` (`id_producto`),
  CONSTRAINT `FK_ventas_productos_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ventas_productos_ventas` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla siycp_jr.ventas_productos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ventas_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas_productos` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
