-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 17-11-2024 a las 20:06:53
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
-- Estructura de tabla para la tabla `caracteristicas`
--

CREATE TABLE `caracteristicas` (
  `id_caracteristica` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `es_principal` tinyint(1) DEFAULT '0',
  `id_valor_tipo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `caracteristicas`
--

INSERT INTO `caracteristicas` (`id_caracteristica`, `nombre`, `es_principal`, `id_valor_tipo`) VALUES
(1, 'Color', 1, 1),
(2, 'Kilómetros', 1, 2),
(3, 'Año', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `id_pais_origen` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `nombre`, `id_pais_origen`) VALUES
(1, 'Chevrolet', 1),
(2, 'Toyota', 1),
(3, 'BMW', 3),
(4, 'Honda', 4);
(5, 'Ford', 5),
(6, 'Mercedes-Benz', 4);
(7, 'Volkswagen', 2),
(8, 'Ferrari', 4);
(9, 'Lamborghini', 3),
(10, 'Fiat', 4);
(11, 'Renault', 3),
(12, 'Peugeot', 1);
(13, 'Citroen', 3),
(14, 'Hyundai', 2);
(15, 'Kia', 3),
(16, 'Yamaha', 4);
(17, 'Kawasaki', 3),
(18, 'Suzuki', 4);
(19, 'Ducati', 3),
(20, 'Harley-Davidson', 5);
(21, 'KMT', 3),
(22, 'Tesla', 4);
(23, 'Jeep', 3),
(24, 'Audi', 5);
(25, 'Porsche', 3),
(26, 'Alfa Romeo', 4);
(27, 'Maserati', 3),
(28, 'Buggati', 2);
(29, 'Volvo', 3),
(30, 'Aston Martin', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `id_modelo` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `id_marca` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id_modelo`, `nombre`, `id_marca`) VALUES
(1, 'Onix', 1),
(2, 'Camaro', 1),
(3, 'Silverado', 1),
(4, 'Corolla', 2),
(5, 'Hilux', 2),
(6, 'Supra', 2),
(7, 'Serie 3', 3),
(8, 'X5', 3),
(9, 'R1250GS', 3),
(10, 'Civic', 4),
(11, 'CR-V', 4),
(12, 'CBR500R', 4),
(13, 'Mustang', 5),
(14, 'F-150', 5),
(15, 'Explorer', 5),
(16, 'Clase C', 6),
(17, 'GLE', 6),
(18, 'AMG GT', 6),
(19, 'Golf', 7),
(20, 'Passat', 7),
(21, 'Tiguan', 7),
(22, '488 GTB', 8),
(23, 'Roma', 8),
(24, 'SF90 Stradale', 8),
(25, 'Huracán', 9),
(26, 'Aventador', 9),
(27, 'Urus', 9),
(28, '500', 10),
(29, 'Tipo', 10),
(30, 'Panda', 10),
(31, 'Clio', 11),
(32, 'Duster', 11),
(33, 'Megane', 11),
(34, '208', 12),
(35, '3008', 12),
(36, '508', 12),
(37, 'C3', 13),
(38, 'C5 Aircross', 13),
(39, 'Ami', 13),
(40, 'Tucson', 14),
(41, 'Elantra', 14),
(42, 'Ioniq', 14),
(43, 'Sportage', 15),
(44, 'Seltos', 15),
(45, 'Rio', 15),
(46, 'R1', 16),
(47, 'MT-07', 16),
(48, 'YZF-R3', 16),
(49, 'Ninja ZX-6R', 17),
(50, 'Versys 650', 17),
(51, 'Z900', 17),
(52, 'Swift', 18),
(53, 'Vitara', 18),
(54, 'GSX-R750', 18),
(55, 'Panigale V4', 19),
(56, 'Monster', 19),
(57, 'Diavel', 19),
(58, 'Street Glide', 20),
(59, 'Sportster S', 20),
(60, 'Fat Boy', 20),
(61, 'Duke 390', 21),
(62, 'RC 8C', 21),
(63, 'Adventure 890', 21),
(64, 'Model S', 22),
(65, 'Model 3', 22),
(66, 'Model Y', 22),
(67, 'Wrangler', 23),
(68, 'Grand Cherokee', 23),
(69, 'Renegade', 23),
(70, 'A4', 24),
(71, 'Q7', 24),
(72, 'R8', 24),
(73, '911', 25),
(74, 'Cayenne', 25),
(75, 'Taycan', 25),
(76, 'Giulia', 26),
(77, 'Stelvio', 26),
(78, '4C', 26),
(79, 'Ghibli', 27),
(80, 'Levante', 27),
(81, 'Quattroporte', 27),
(82, 'Chiron', 28),
(83, 'Veyron', 28),
(84, 'Divo', 28),
(85, 'XC60', 29),
(86, 'S90', 29),
(87, 'XC90', 29),
(88, 'DB11', 30),
(89, 'Vantage', 30),
(90, 'DBS Superleggera', 30);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedas`
--

CREATE TABLE `monedas` (
  `id_moneda` int NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `monedas`
--

INSERT INTO `monedas` (`id_moneda`, `descripcion`) VALUES
(1, 'Peso Argentino'),
(2, 'Real Brasileño'),
(3, 'Euro'),
(4, 'Yen Japonés');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda_conversiones`
--

CREATE TABLE `moneda_conversiones` (
  `id_moneda_origen` int NOT NULL,
  `id_moneda_destino` int NOT NULL,
  `fecha` date NOT NULL,
  `tasa_conversion` decimal(10,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id_pais` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id_pais`, `nombre`) VALUES
(1, 'Argentina'),
(2, 'Brasil'),
(3, 'Alemania'),
(4, 'Japón');
(5, 'Estados Unidos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `id_producto_tipo` int DEFAULT NULL,
  `id_modelo` int DEFAULT NULL,
  `id_producto_estado` int DEFAULT NULL,
  `fecha_carga` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `id_producto_tipo`, `id_modelo`, `id_producto_estado`, `fecha_carga`) VALUES
(1, 'Chevrolet Onix 2022', 1, 1, 1, '2024-11-11 14:45:23'),
(2, 'Toyota Corolla 2022', 1, 2, 1, '2024-11-11 14:45:23'),
(3, 'BMW X5 2022', 1, 3, 1, '2024-11-11 14:45:23'),
(4, 'Honda Civic 2022', 1, 4, 1, '2024-11-11 14:45:23'),
(5, 'Ford Explorer 2022', 1, 5, 1, '2024-11-11 14:45:23'),
(6, 'Mercedes-Benz Clase C 2022', 1, 6, 1, '2024-11-11 14:45:23'),
(7, 'Volkswagen Golf 2022', 1, 7, 1, '2024-11-11 14:45:23'),
(8, 'Ferrari Roma 2022', 1, 8, 1, '2024-11-11 14:45:23'),
(9, 'Lamborghini Huracán 2022', 1, 9, 1, '2024-11-11 14:45:23'),
(10, 'Fiat 500 2022', 1, 10, 1, '2024-11-11 14:45:23'),
(11, 'Renault Duster 2022', 1, 11, 1, '2024-11-11 14:45:23'),
(12, 'Peugeot 208 2022', 1, 12, 1, '2024-11-11 14:45:23'),
(12, 'Citroen C3 2022', 1, 13, 1, '2024-11-11 14:45:23'),
(14, 'Hyundai Elantra 2022', 1, 14, 1, '2024-11-11 14:45:23');
(15, 'Kia Rio 2022', 1, 9, 1, '2024-11-11 14:45:23'),
(16, 'Yamaha MT-07 2022', 1, 10, 1, '2024-11-11 14:45:23'),
(17, 'Kawasaki Ninja ZX-6R 2022', 1, 11, 1, '2024-11-11 14:45:23'),
(18, 'Suzuki GSX-R750 2022', 1, 12, 1, '2024-11-11 14:45:23'),
(19, 'Ducati Panigale V4 2022', 1, 13, 1, '2024-11-11 14:45:23'),
(20, 'Harley-Davidson Sportster S 2022', 1, 14, 1, '2024-11-11 14:45:23');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_estados`
--

CREATE TABLE `producto_estados` (
  `id_producto_estado` int NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto_estados`
--

INSERT INTO `producto_estados` (`id_producto_estado`, `descripcion`, `activo`) VALUES
(1, 'Disponible', 1),
(2, 'Vendido', 0),
(3, 'En espera', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_favoritos`
--

CREATE TABLE `producto_favoritos` (
  `id_producto` int NOT NULL,
  `id_usuario` int NOT NULL,
  `fecha_carga` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto_favoritos`
--

INSERT INTO `producto_favoritos` (`id_producto`, `id_usuario`, `fecha_carga`) VALUES
(1, 2, '2024-11-11 14:45:24'),
(2, 1, '2024-11-11 14:45:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_imagenes`
--

CREATE TABLE `producto_imagenes` (
  `id_producto_imagen` int NOT NULL,
  `id_producto` int DEFAULT NULL,
  `url_imagen` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `orden` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto_imagenes`
--

INSERT INTO `producto_imagenes` (`id_producto_imagen`, `id_producto`, `url_imagen`, `descripcion`, `orden`) VALUES
(1, 1, 'https://ejemplo.com/imagen1.jpg', 'Imagen lateral del Chevrolet Onix', 1),
(2, 2, 'https://ejemplo.com/imagen2.jpg', 'Imagen frontal del Toyota Corolla', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_tipos`
--

CREATE TABLE `producto_tipos` (
  `id_producto_tipo` int NOT NULL,
  `tipo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto_tipos`
--

INSERT INTO `producto_tipos` (`id_producto_tipo`, `tipo`) VALUES
(1, 'Automóvil'),
(2, 'Motocicleta'),
(3, 'Camión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL,
  `correo_electronico` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contrasenia` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usuario_tipo` int DEFAULT NULL,
  `id_usuario_estado` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `correo_electronico`, `nombre`, `apellido`, `contrasenia`, `fecha_creacion`, `id_usuario_tipo`, `id_usuario_estado`) VALUES
(1, 'juan@ejemplo.com', 'Juan', 'Pérez', 'password123', '2024-11-11 14:45:22', 1, 1),
(2, 'maria@ejemplo.com', 'María', 'Gómez', 'password456', '2024-11-11 14:45:22', 2, 1);
(3, 'pedro@ejemplo.com', 'Pedro', 'Martínez', 'password789', '2024-11-12 09:30:00', 1, 1),
(4, 'laura@ejemplo.com', 'Laura', 'Rodríguez', 'password101', '2024-11-12 10:15:00', 2, 2),
(5, 'lucas@ejemplo.com', 'Lucas', 'Fernández', 'password202', '2024-11-12 11:45:00', 1, 1),
(6, 'sofia@ejemplo.com', 'Sofía', 'López', 'password303', '2024-11-12 12:00:00', 2, 2),
(7, 'carlos@ejemplo.com', 'Carlos', 'García', 'password404', '2024-11-13 08:30:00', 1, 1),
(8, 'valeria@ejemplo.com', 'Valeria', 'Hernández', 'password505', '2024-11-13 09:00:00', 2, 2),
(9, 'andres@ejemplo.com', 'Andrés', 'Ruiz', 'password606', '2024-11-13 10:30:00', 1, 1),
(10, 'camila@ejemplo.com', 'Camila', 'Ramírez', 'password707', '2024-11-13 11:15:00', 2, 1);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_estados`
--

CREATE TABLE `usuario_estados` (
  `id_usuario_estado` int NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_estados`
--

INSERT INTO `usuario_estados` (`id_usuario_estado`, `descripcion`, `activo`) VALUES
(1, 'Activo', 1),
(2, 'Inactivo', 0),
(3, 'Suspendido', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_tipos`
--

CREATE TABLE `usuario_tipos` (
  `id_usuario_tipo` int NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_tipos`
--

INSERT INTO `usuario_tipos` (`id_usuario_tipo`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Vendedor'),
(3, 'Comprador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valor_tipos`
--

CREATE TABLE `valor_tipos` (
  `id_valor_tipo` int NOT NULL,
  `tipo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `validacion_expresion_regular` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `valor_tipos`
--

INSERT INTO `valor_tipos` (`id_valor_tipo`, `tipo`, `validacion_expresion_regular`) VALUES
(1, 'Texto', NULL),
(2, 'Numérico', NULL),
(3, 'Fecha', NULL);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id_publicacion` int NOT NULL,
  `id_producto` int DEFAULT NULL,
  `id_usuario_carga` int DEFAULT NULL
  `fecha_carga` timestamp NULL DEFAULT CURRENT_TIMESTAMP
  `ubicacion_latitud` decimal(10,7) DEFAULT NULL,
  `ubicacion_longitud` decimal(10,7) DEFAULT NULL
  `id_localidad` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion_imagenes`
--

CREATE TABLE `publicacion_imagenes` (
  `id_publicacion_imagen` int NOT NULL,
  `id_publicacion`int DEFAULT NULL,
  `url_imagen` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `orden` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Estructura de tabla para la tabla `publicacion_precios`
--

CREATE TABLE `publicacion_precios` (
  `id_publicacion` int NOT NULL,
  `fecha` date NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_moneda` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicacion_precios`
--

INSERT INTO `publicacion_precios` (`id_publicacion`, `fecha`, `precio`, `id_moneda`) VALUES
(1, '2024-11-11', 3000000.00, 1),
(2, '2024-11-11', 3500000.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `id_provincia` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `id_pais` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `id_localidad` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `id_localidad` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD PRIMARY KEY (`id_caracteristica`),
  ADD KEY `id_valor_tipo` (`id_valor_tipo`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`),
  ADD KEY `id_pais_origen` (`id_pais_origen`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id_modelo`),
  ADD KEY `id_marca` (`id_marca`);

--
-- Indices de la tabla `monedas`
--
ALTER TABLE `monedas`
  ADD PRIMARY KEY (`id_moneda`);

--
-- Indices de la tabla `moneda_conversiones`
--
ALTER TABLE `moneda_conversiones`
  ADD PRIMARY KEY (`id_moneda_origen`,`id_moneda_destino`,`fecha`),
  ADD KEY `id_moneda_destino` (`id_moneda_destino`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id_pais`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_producto_tipo` (`id_producto_tipo`),
  ADD KEY `id_modelo` (`id_modelo`),
  ADD KEY `id_producto_estado` (`id_producto_estado`),

--
-- Indices de la tabla `producto_caracteristicas`
--
ALTER TABLE `producto_caracteristicas`
  ADD PRIMARY KEY (`id_producto`,`id_caracteristica`),
  ADD KEY `id_caracteristica` (`id_caracteristica`);

--
-- Indices de la tabla `producto_estados`
--
ALTER TABLE `producto_estados`
  ADD PRIMARY KEY (`id_producto_estado`);

--
-- Indices de la tabla `producto_favoritos`
--
ALTER TABLE `producto_favoritos`
  ADD PRIMARY KEY (`id_producto`,`id_usuario`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `producto_imagenes`
--
ALTER TABLE `producto_imagenes`
  ADD PRIMARY KEY (`id_producto_imagen`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `producto_tipos`
--
ALTER TABLE `producto_tipos`
  ADD PRIMARY KEY (`id_producto_tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`),
  ADD KEY `id_usuario_tipo` (`id_usuario_tipo`),
  ADD KEY `id_usuario_estado` (`id_usuario_estado`);

--
-- Indices de la tabla `usuario_estados`
--
ALTER TABLE `usuario_estados`
  ADD PRIMARY KEY (`id_usuario_estado`);

--
-- Indices de la tabla `usuario_tipos`
--
ALTER TABLE `usuario_tipos`
  ADD PRIMARY KEY (`id_usuario_tipo`);

--
-- Indices de la tabla `valor_tipos`
--
ALTER TABLE `valor_tipos`
  ADD PRIMARY KEY (`id_valor_tipo`);
  
--
-- Indices de la tabla `publicacion_precios`
--
ALTER TABLE `publicacion_precios`
  ADD PRIMARY KEY (`id_producto`,`fecha`);

--
-- Indices de la tabla `publicacion_imagenes`
--
ALTER TABLE `publicacion_imagenes`
  ADD PRIMARY KEY (`id_publicacion_imagenes`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id_publicacion`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_usuario_carga` (`id_usuario_carga`),
  ADD KEY `id_localidad` (`id_localidad`);

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`id_localidad`),
  ADD KEY `id_provincia` (`id_provincia`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id_provincia`),
  ADD KEY `id_pais` (`id_pais`);



--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  MODIFY `id_caracteristica` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id_modelo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `monedas`
--
ALTER TABLE `monedas`
  MODIFY `id_moneda` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id_pais` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto_estados`
--
ALTER TABLE `producto_estados`
  MODIFY `id_producto_estado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto_imagenes`
--
ALTER TABLE `producto_imagenes`
  MODIFY `id_producto_imagen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto_tipos`
--
ALTER TABLE `producto_tipos`
  MODIFY `id_producto_tipo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario_estados`
--
ALTER TABLE `usuario_estados`
  MODIFY `id_usuario_estado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario_tipos`
--
ALTER TABLE `usuario_tipos`
  MODIFY `id_usuario_tipo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `valor_tipos`
--
ALTER TABLE `valor_tipos`
  MODIFY `id_valor_tipo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD CONSTRAINT `caracteristicas_ibfk_1` FOREIGN KEY (`id_valor_tipo`) REFERENCES `valor_tipos` (`id_valor_tipo`);

--
-- Filtros para la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD CONSTRAINT `marcas_ibfk_1` FOREIGN KEY (`id_pais_origen`) REFERENCES `paises` (`id_pais`);

--
-- Filtros para la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD CONSTRAINT `modelos_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`);

--
-- Filtros para la tabla `moneda_conversiones`
--
ALTER TABLE `moneda_conversiones`
  ADD CONSTRAINT `moneda_conversiones_ibfk_1` FOREIGN KEY (`id_moneda_origen`) REFERENCES `monedas` (`id_moneda`),
  ADD CONSTRAINT `moneda_conversiones_ibfk_2` FOREIGN KEY (`id_moneda_destino`) REFERENCES `monedas` (`id_moneda`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_producto_tipo`) REFERENCES `producto_tipos` (`id_producto_tipo`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_modelo`) REFERENCES `modelos` (`id_modelo`),
  ADD CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`id_producto_estado`) REFERENCES `producto_estados` (`id_producto_estado`),
  ADD CONSTRAINT `productos_ibfk_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `producto_caracteristicas`
--
ALTER TABLE `producto_caracteristicas`
  ADD CONSTRAINT `producto_caracteristicas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `producto_caracteristicas_ibfk_2` FOREIGN KEY (`id_caracteristica`) REFERENCES `caracteristicas` (`id_caracteristica`);

--
-- Filtros para la tabla `producto_favoritos`
--
ALTER TABLE `producto_favoritos`
  ADD CONSTRAINT `producto_favoritos_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `producto_favoritos_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `producto_imagenes`
--
ALTER TABLE `producto_imagenes`
  ADD CONSTRAINT `producto_imagenes_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `producto_precios`
--
ALTER TABLE `producto_precios`
  ADD CONSTRAINT `producto_precios_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_usuario_tipo`) REFERENCES `usuario_tipos` (`id_usuario_tipo`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_usuario_estado`) REFERENCES `usuario_estados` (`id_usuario_estado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
