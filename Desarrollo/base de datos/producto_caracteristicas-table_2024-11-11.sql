-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 11-11-2024 a las 14:47:27
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vehiculos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_caracteristicas`
--

CREATE TABLE `producto_caracteristicas` (
  `id_producto` int NOT NULL,
  `id_caracteristica` int NOT NULL,
  `valor` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fecha_carga` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto_caracteristicas`
--

INSERT INTO `producto_caracteristicas` (`id_producto`, `id_caracteristica`, `valor`, `fecha_carga`) VALUES
(1, 1, 'Rojo', '2024-11-11 14:45:24'),
(1, 2, '10000', '2024-11-11 14:45:24'),
(1, 3, '2022', '2024-11-11 14:45:24'),
(2, 1, 'Blanco', '2024-11-11 14:45:24'),
(2, 2, '5000', '2024-11-11 14:45:24'),
(2, 3, '2022', '2024-11-11 14:45:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto_caracteristicas`
--
ALTER TABLE `producto_caracteristicas`
  ADD PRIMARY KEY (`id_producto`,`id_caracteristica`),
  ADD KEY `id_caracteristica` (`id_caracteristica`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto_caracteristicas`
--
ALTER TABLE `producto_caracteristicas`
  ADD CONSTRAINT `producto_caracteristicas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `producto_caracteristicas_ibfk_2` FOREIGN KEY (`id_caracteristica`) REFERENCES `caracteristicas` (`id_caracteristica`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
