-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2023 a las 10:47:59
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
(74, 470, 420);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `asiento` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `ocupado` int(1) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `cuando` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`asiento`, `fecha`, `ocupado`, `usuario`, `cuando`) VALUES
(1, '2023-02-16', 2, '123@123', '2023-02-16 10:55:49'),
(2, '2023-02-16', 2, '123@123', '2023-02-16 10:55:50'),
(2, '2023-02-17', 2, '123@123', '2023-02-16 13:20:49'),
(3, '2023-02-15', 2, 'raul@gmail.com', '2023-02-15 22:25:13'),
(3, '2023-02-16', 2, 'ismael@gmail.com', '2023-02-16 11:16:17'),
(4, '2023-02-15', 2, 'raul@gmail.com', '2023-02-15 22:25:12'),
(4, '2023-02-16', 2, 'ismael@gmail.com', '2023-02-16 11:16:18'),
(5, '2023-02-16', 2, '123@123', '2023-02-16 11:07:06'),
(6, '2023-02-15', 2, '123@123', '2023-02-15 11:46:43'),
(6, '2023-02-16', 2, 'raul@gmail.com', '2023-02-16 11:07:27'),
(6, '2023-02-17', 2, '123@123', '2023-02-16 13:20:49'),
(7, '2023-02-15', 2, '123@123', '2023-02-15 11:46:41'),
(7, '2023-02-16', 2, 'raul@gmail.com', '2023-02-16 11:07:26'),
(7, '2023-02-17', 2, '123@123', '2023-02-16 13:20:48'),
(8, '2023-02-15', 2, '123@123', '2023-02-15 11:46:41'),
(8, '2023-02-16', 2, '123@123', '2023-02-15 22:26:13'),
(8, '2023-02-17', 2, '123@123', '2023-02-16 13:20:47'),
(8, '2023-02-22', 2, 'ismael@gmail.com', '2023-02-16 13:11:50'),
(9, '2023-02-15', 2, '123@123', '2023-02-15 11:46:42'),
(9, '2023-02-16', 2, '123@123', '2023-02-15 22:26:13'),
(9, '2023-02-22', 2, 'ismael@gmail.com', '2023-02-16 13:11:50'),
(10, '2023-02-15', 2, '123@123', '2023-02-15 11:47:11'),
(10, '2023-02-16', 2, 'raul@gmail.com', '2023-02-16 10:10:49'),
(10, '2023-02-18', 2, 'a@hma.com', '2023-02-18 23:40:36'),
(11, '2023-02-15', 2, '123@123', '2023-02-15 11:47:12'),
(11, '2023-02-16', 2, 'ismael@gmail.com', '2023-02-16 11:16:16'),
(11, '2023-02-18', 2, 'a@hma.com', '2023-02-18 23:40:38'),
(12, '2023-02-15', 2, '123@123', '2023-02-15 11:47:13'),
(12, '2023-02-16', 2, 'ismael@gmail.com', '2023-02-16 11:16:17'),
(13, '2023-02-15', 2, '123@123', '2023-02-15 11:52:50'),
(13, '2023-02-16', 2, 'ismael@gmail.com', '2023-02-16 11:16:19'),
(14, '2023-02-16', 2, 'ismael@gmail.com', '2023-02-16 11:16:20'),
(15, '2023-02-16', 2, 'ismael@gmail.com', '2023-02-16 11:16:15'),
(16, '2023-02-16', 2, 'ismael@gmail.com', '2023-02-16 11:16:14'),
(17, '2023-02-15', 2, '123@123', '2023-02-15 11:52:44'),
(17, '2023-02-16', 2, 'raul@gmail.com', '2023-02-16 11:11:56'),
(18, '2023-02-15', 2, '123@123', '2023-02-15 11:52:44'),
(18, '2023-02-16', 2, '123@123', '2023-02-15 22:26:12'),
(18, '2023-02-17', 2, 'raul@gmail.com', '2023-02-16 13:12:41'),
(19, '2023-02-15', 2, '123@123', '2023-02-15 11:52:37'),
(19, '2023-02-16', 2, 'raul@gmail.com', '2023-02-16 10:10:07'),
(19, '2023-02-17', 2, 'raul@gmail.com', '2023-02-16 13:12:40'),
(20, '2023-02-15', 2, '123@123', '2023-02-15 11:52:37'),
(20, '2023-02-16', 2, 'raul@gmail.com', '2023-02-16 10:10:48'),
(21, '2023-02-15', 2, '123@123', '2023-02-15 11:52:48'),
(22, '2023-02-15', 2, '123@123', '2023-02-15 11:52:52'),
(28, '2023-02-15', 2, '123@123', '2023-02-15 11:52:45'),
(28, '2023-02-16', 2, '123@123', '2023-02-15 22:26:14'),
(29, '2023-02-15', 2, '123@123', '2023-02-15 11:52:46'),
(29, '2023-02-16', 2, 'raul@gmail.com', '2023-02-16 10:10:07'),
(30, '2023-02-15', 2, '123@123', '2023-02-15 11:52:47'),
(30, '2023-02-16', 2, 'raul@gmail.com', '2023-02-16 10:10:47'),
(30, '2023-02-21', 2, 'ismael@gmail.com', '2023-02-18 23:38:31'),
(31, '2023-02-15', 2, '123@123', '2023-02-15 11:52:51'),
(31, '2023-02-21', 2, 'ismael@gmail.com', '2023-02-18 23:38:26'),
(32, '2023-02-21', 2, 'ismael@gmail.com', '2023-02-18 23:38:26'),
(33, '2023-02-21', 2, 'ismael@gmail.com', '2023-02-18 23:38:22'),
(38, '2023-02-16', 2, '123@123', '2023-02-15 22:26:11'),
(39, '2023-02-15', 2, '123@123', '2023-02-15 11:52:54'),
(40, '2023-02-15', 2, '123@123', '2023-02-15 11:52:53'),
(40, '2023-02-16', 2, 'raul@gmail.com', '2023-02-16 10:10:46'),
(40, '2023-02-21', 2, 'ismael@gmail.com', '2023-02-18 23:38:29'),
(41, '2023-02-15', 2, 'raul@gmail.com', '2023-02-15 22:25:03'),
(41, '2023-02-21', 2, 'ismael@gmail.com', '2023-02-18 23:38:30'),
(42, '2023-02-15', 2, 'raul@gmail.com', '2023-02-15 22:25:04'),
(42, '2023-02-21', 2, 'ismael@gmail.com', '2023-02-18 23:38:30'),
(43, '2023-02-15', 2, 'raul@gmail.com', '2023-02-15 22:25:04'),
(43, '2023-02-21', 2, 'ismael@gmail.com', '2023-02-18 23:38:32'),
(44, '2023-02-15', 2, 'raul@gmail.com', '2023-02-15 22:25:05'),
(48, '2023-02-16', 2, '123@123', '2023-02-15 22:26:10'),
(50, '2023-02-15', 2, 'raul@gmail.com', '2023-02-15 22:25:09'),
(51, '2023-02-15', 2, 'raul@gmail.com', '2023-02-15 22:25:07'),
(52, '2023-02-15', 2, 'raul@gmail.com', '2023-02-15 22:25:08'),
(53, '2023-02-15', 2, 'raul@gmail.com', '2023-02-15 22:25:06'),
(54, '2023-02-15', 2, 'raul@gmail.com', '2023-02-15 22:25:05'),
(58, '2023-02-16', 2, '123@123', '2023-02-15 22:26:10'),
(68, '2023-02-16', 2, '123@123', '2023-02-15 22:26:09');

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
