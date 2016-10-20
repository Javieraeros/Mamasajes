-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-10-2016 a las 22:11:23
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Mamasajes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Mamasajistas`
--

CREATE TABLE `Mamasajistas` (
  `DNI` varchar(9) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `Edad` tinyint(11) NOT NULL,
  `Mamasajes` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Mamasajistas`
--

INSERT INTO `Mamasajistas` (`DNI`, `Nombre`, `Sexo`, `Edad`, `Mamasajes`) VALUES
('', 'sdfgds', '', 0, ''),
('0000002B', 'Cayetana de Alba Folclorica', 'M', 45, 'N'),
('1A', 'Jose Carlos de Bourbon Vino', 'H', 99, 'N'),
('21548769B', 'Agapito Juan MAteos Lopez', 'H', 64, 'S'),
('29875769B', 'Lorena Dolores Fuertes Barriga', 'M', 19, 'N'),
('47123345G', 'Pepita de los Palotes ', 'M', 25, 'S'),
('47428156G', 'Francisca Ruiz Rodriguez', 'H', 35, 'S'),
('47428156H', 'Francisca Ruiz', 'H', 35, '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Mamasajistas`
--
ALTER TABLE `Mamasajistas`
  ADD PRIMARY KEY (`DNI`),
  ADD UNIQUE KEY `DNI` (`DNI`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
