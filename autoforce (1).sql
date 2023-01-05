-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2022 a las 06:59:34
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `autoforce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `id_usuario` int(4) NOT NULL,
  `id_producto` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `id_usuario`, `id_producto`) VALUES
(1, 18, 4),
(2, 18, 3),
(3, 18, 4),
(4, 18, 6),
(5, 18, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carro`
--

CREATE TABLE `carro` (
  `id` int(4) NOT NULL,
  `foto` varchar(60) CHARACTER SET utf8 NOT NULL,
  `marca` varchar(30) CHARACTER SET utf8 NOT NULL,
  `modelo` varchar(30) CHARACTER SET utf8 NOT NULL,
  `año` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carro`
--

INSERT INTO `carro` (`id`, `foto`, `marca`, `modelo`, `año`) VALUES
(2, 'chevrolet-aveo-2022.jpg', 'chevrolet', 'aveo', 2022),
(5, 'toyota-corolla-2018.jpg', 'toyota', 'corolla', 2018),
(6, 'honda-civic-2012.jpg', 'honda', 'civic', 2012),
(8, 'mazda-cx5-2016.jpg', 'mazda', 'cx5', 2016),
(9, 'mitsubishi-lancer-2017.jpg', 'mitsubishi', 'lancer', 2017),
(10, 'nissan-versa-2022.jpg', 'nissan', 'versa', 2022),
(11, 'Subaru-wrx-2021.jpg', 'subaru', 'wrx', 2021),
(12, 'susuki-swift-2021.jpg', 'susuki', 'swift', 2021),
(13, 'hyundai-tucson-2021.jpg', 'hyundai', 'tucson', 2021),
(14, 'jaguar-xj-2020.jpg', 'jaguar', 'xj', 2020);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertas`
--

CREATE TABLE `ofertas` (
  `id` int(4) NOT NULL,
  `foto` varchar(60) CHARACTER SET utf8 NOT NULL,
  `id_producto` int(4) NOT NULL,
  `precio` int(7) NOT NULL,
  `oferta` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productocarro`
--

CREATE TABLE `productocarro` (
  `id` int(11) NOT NULL,
  `id_carro` int(4) NOT NULL,
  `id_producto` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productocarro`
--

INSERT INTO `productocarro` (`id`, `id_carro`, `id_producto`) VALUES
(1, 2, 4),
(3, 13, 5),
(4, 2, 13),
(5, 2, 10),
(6, 5, 9),
(7, 5, 11),
(8, 5, 14),
(9, 6, 6),
(10, 6, 10),
(11, 6, 13),
(14, 8, 3),
(15, 8, 11),
(16, 8, 8),
(17, 8, 12),
(18, 9, 3),
(19, 9, 5),
(20, 9, 7),
(21, 10, 3),
(22, 10, 11),
(23, 10, 14),
(24, 10, 9),
(25, 11, 4),
(26, 11, 8),
(27, 11, 11),
(28, 11, 12),
(29, 12, 12),
(30, 12, 4),
(31, 12, 14),
(32, 12, 11),
(33, 13, 3),
(34, 2, 8),
(35, 6, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(4) NOT NULL,
  `foto` varchar(60) CHARACTER SET utf8 NOT NULL,
  `nombre` varchar(40) CHARACTER SET utf8 NOT NULL,
  `precio` int(7) NOT NULL,
  `cantidad` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `foto`, `nombre`, `precio`, `cantidad`) VALUES
(3, 'espejo.jpg', 'Espejo Interior Universal 20 Cms', 500, 2500),
(4, 'bujia-cobre-2248.jpg', 'bujia de cobre 2248', 146, 9548),
(5, 'bujia-iridio-xp5144.jpg', 'bujia de iridio xp5144', 200, 5429),
(6, 'bujia-iridio-xp6043.jpg', 'bujia de iridio xp6043', 248, 2678),
(7, 'cipa-espejo-retrovisor.jpg', 'cipa espejo restrovisor', 430, 547),
(8, 'espejo-retrovisor-antireflejante.jpg', 'espejo retrovisor anti reflejante ', 600, 147),
(9, 'llanta.jpg', 'llanta 185/65R15 88H Bridgestone B250', 5390, 45),
(10, 'llanta-michelin-energy.jpg', 'llanta michelin energy ', 6000, 50),
(11, 'llanta-pireli-cinturato.jpg', 'llanta pireli cinturato', 4000, 60),
(12, 'tuerca-rueda-611_154.jpg', 'tuerca de rueda 611.154', 71, 1000),
(13, 'tuerca-rueda-611_187.jpg', 'tuerca de rueda 611.187', 50, 1478),
(14, 'tuerca-rueda-712_306.jpg', 'tuerca de rueda 712.306', 90, 958);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariocarro`
--

CREATE TABLE `usuariocarro` (
  `id_carro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuariocarro`
--

INSERT INTO `usuariocarro` (`id_carro`) VALUES
(9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(4) NOT NULL,
  `foto` varchar(60) CHARACTER SET utf8 NOT NULL,
  `nombre` varchar(40) CHARACTER SET utf8 NOT NULL,
  `correo` varchar(90) CHARACTER SET utf8 NOT NULL,
  `telefono` int(10) NOT NULL,
  `contraseña` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'contraseña',
  `cumpleaños` date DEFAULT NULL,
  `estado` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `ciudad` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `direccion` varchar(60) CHARACTER SET utf8 NOT NULL,
  `cp` int(5) DEFAULT NULL,
  `administrador` tinyint(1) NOT NULL DEFAULT 0,
  `id_carro` int(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `foto`, `nombre`, `correo`, `telefono`, `contraseña`, `cumpleaños`, `estado`, `ciudad`, `direccion`, `cp`, `administrador`, `id_carro`) VALUES
(15, 'cliente.jpg', 'Lalo Salamanca', 'Lalo@correo.com', 618459785, 'lalo123', '2022-05-18', 'Aguascalientes', 'Durango', 'Casa de lalo', 34000, 0, 5),
(16, 'clienta.jpg', 'Claudia Rodriguez', 'Claudia@correo.com', 618736985, 'contraseña', NULL, NULL, NULL, 'casa de claudia', NULL, 0, 0),
(17, 'cliente.jpg', 'Jose Garcia', 'jose@correo.com', 618245111, 'jose123', '2006-07-19', 'Sinaloa', 'Culiacan', 'casa de jose', 39514, 0, 0),
(18, 'jesus.jpg', 'Jesus Navar', 'jesus@correo.com', 618000023, 'jesus123', '2022-06-15', 'Durango', 'Durango', 'Casa de jesus', 34000, 1, 9),
(19, 'fer.jpg', 'Fernando Vargas', 'fer@correo.com', 618111111, 'fer123', '2000-09-14', 'Durango', 'Durango', 'Casa de fer', 34111, 1, 0),
(20, 'ricardo.jpg', 'Ricardo Amador', 'ricardo@correo.com', 618222222, 'ricardo123', '2000-03-20', 'Durango', 'Durango', 'Casa de ricardo', 34333, 1, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `productocarro`
--
ALTER TABLE `productocarro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_carro`),
  ADD KEY `id_carro` (`id_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuariocarro`
--
ALTER TABLE `usuariocarro`
  ADD KEY `id_carro` (`id_carro`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_carro` (`id_carro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `carro`
--
ALTER TABLE `carro`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productocarro`
--
ALTER TABLE `productocarro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productocarro`
--
ALTER TABLE `productocarro`
  ADD CONSTRAINT `productocarro_ibfk_2` FOREIGN KEY (`id_carro`) REFERENCES `carro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productocarro_ibfk_3` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
