-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2022 a las 17:54:12
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `olympus`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `telefono` double NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `nombre`, `apellido`, `telefono`, `estado`) VALUES
(39190393, 'UWU', 'venegas', 2147483647, 'Activo'),
(1040030164, 'luis', 'perez', 2147483647, 'Activo'),
(39190376, 'rey', 'toro', 3236784312, 'Activo'),
(1040872232, 'felipe', 'venegas', 3105364222, 'Activo'),
(666, 'luis', 'lopez', 3052784893, ''),
(666, 'luis', 'lopez', 3052784893, ''),
(123, 'luis', 'lopez', 3052784893, 'activo'),
(666, 'wwf', 'eea', 3052784893, 'Activo'),
(999, 'dff', 'ggg', 777, 'Activo'),
(999, 'dff', 'ggg', 777, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `codigo_usuario` int(11) NOT NULL,
  `suscripcion` varchar(45) DEFAULT NULL,
  `instructor` varchar(45) DEFAULT NULL,
  `flujo_ingreso` varchar(45) DEFAULT NULL,
  `estado` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujos_ingresos`
--

CREATE TABLE `flujos_ingresos` (
  `idflujos_ingreso` int(20) NOT NULL,
  `fecha_ingreso` datetime DEFAULT NULL,
  `hora_ingreso` time DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `clientes_codigo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructores`
--

CREATE TABLE `instructores` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `disponibilidad` varchar(45) DEFAULT NULL,
  `telefono` int(20) DEFAULT NULL,
  `gimnasio_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `codigo` int(11) NOT NULL,
  `fecha_pago` datetime DEFAULT NULL,
  `caducidad_suscripcion` datetime DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `suscripcion` varchar(45) DEFAULT NULL,
  `suscripciones_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `codigo` int(11) NOT NULL,
  `nombre_suscripcion` varchar(45) DEFAULT NULL,
  `precio` int(11) NOT NULL,
  `fecha_inscripcion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

CREATE TABLE `suscripciones` (
  `codigo` int(11) NOT NULL,
  `codigo_cliente` int(11) DEFAULT NULL,
  `codigo_servicios` int(11) DEFAULT NULL,
  `servicios_codigo` int(11) NOT NULL,
  `clientes_codigo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) NOT NULL,
  `telefono` double DEFAULT NULL,
  `correo` varchar(30) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `telefono`, `correo`, `estado`) VALUES
(123, 'Felipe', 'Venegas', 3052784893, 'luislp@gmail.com', 'activo'),
(206, 'fgs', 'sef', 222, 'luislp@gmail.com', 'Activo'),
(332, 'ggg', 'vvv', 777, 'fg@gmail.com', 'Activo'),
(333, 'felipe', 'venegas', 777, 'fg@gmail.com', 'Activo'),
(456, 'YOLA', 'HHR', 222, 'luislp@gmail.com', 'activo'),
(657, 'fff', 'ddd', 777, 'fg@gmail.com', 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigo_usuario`);

--
-- Indices de la tabla `flujos_ingresos`
--
ALTER TABLE `flujos_ingresos`
  ADD PRIMARY KEY (`idflujos_ingreso`),
  ADD KEY `fk_flujos_ingresos_clientes1` (`clientes_codigo_usuario`);

--
-- Indices de la tabla `instructores`
--
ALTER TABLE `instructores`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_pagos_suscripciones1` (`suscripciones_codigo`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_suscripciones_servicios1` (`servicios_codigo`),
  ADD KEY `fk_suscripciones_clientes1` (`clientes_codigo_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `flujos_ingresos`
--
ALTER TABLE `flujos_ingresos`
  ADD CONSTRAINT `fk_flujos_ingresos_clientes1` FOREIGN KEY (`clientes_codigo_usuario`) REFERENCES `clientes` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `fk_pagos_suscripciones1` FOREIGN KEY (`suscripciones_codigo`) REFERENCES `suscripciones` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD CONSTRAINT `fk_suscripciones_clientes1` FOREIGN KEY (`clientes_codigo_usuario`) REFERENCES `clientes` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_suscripciones_servicios1` FOREIGN KEY (`servicios_codigo`) REFERENCES `servicios` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
