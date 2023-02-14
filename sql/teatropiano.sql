-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-02-2023 a las 13:38:02
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `teatropiano`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asientos`
--

CREATE TABLE `asientos` (
  `cod_asiento` int(11) NOT NULL,
  `x` int(4) NOT NULL,
  `y` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asientos`
--

INSERT INTO `asientos` (`cod_asiento`, `x`, `y`) VALUES
(1, 0, -70),
(2, 40, -70),
(3, 430, -70),
(4, 470, -70),
(5, 0, 0),
(6, 40, 0),
(7, 80, 0),
(8, 120, 0),
(9, 160, 0),
(10, 310, 0),
(11, 350, 0),
(12, 390, 0),
(13, 430, 0),
(14, 470, 0),
(15, 0, 70),
(16, 40, 70),
(17, 80, 70),
(18, 120, 70),
(19, 160, 70),
(20, 310, 70),
(21, 350, 70),
(22, 390, 70),
(23, 430, 70),
(24, 470, 70),
(25, 0, 140),
(26, 40, 140),
(27, 80, 140),
(28, 120, 140),
(29, 160, 140),
(30, 310, 140),
(31, 350, 140),
(32, 390, 140),
(33, 430, 140),
(34, 470, 140),
(35, 0, 210),
(36, 40, 210),
(37, 80, 210),
(38, 120, 210),
(39, 160, 210),
(40, 310, 210),
(41, 350, 210),
(42, 390, 210),
(43, 430, 210),
(44, 470, 210),
(45, 0, 280),
(46, 40, 280),
(47, 80, 280),
(48, 120, 280),
(49, 160, 280),
(50, 310, 280),
(51, 350, 280),
(52, 390, 280),
(53, 430, 280),
(54, 470, 280),
(55, 0, 350),
(56, 40, 350),
(57, 80, 350),
(58, 120, 350),
(59, 160, 350),
(60, 310, 350),
(61, 350, 350),
(62, 390, 350),
(63, 430, 350),
(64, 470, 350),
(65, 0, 420),
(66, 40, 420),
(67, 80, 420),
(68, 120, 420),
(69, 160, 420),
(70, 310, 420),
(71, 350, 420),
(72, 390, 420),
(73, 430, 420),
(74, 470, 420),
(75, 470, -70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `asiento` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `ocupado` int(1) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `cuando` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`asiento`, `fecha`, `ocupado`, `usuario`, `cuando`) VALUES
(1, '2023-02-14', 2, 'a@b.c', '2023-02-14'),
(3, '2023-02-14', 2, 'a@a.c', '2023-02-14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asientos`
--
ALTER TABLE `asientos`
  ADD PRIMARY KEY (`cod_asiento`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`asiento`,`fecha`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asientos`
--
ALTER TABLE `asientos`
  MODIFY `cod_asiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`asiento`) REFERENCES `asientos` (`cod_asiento`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
