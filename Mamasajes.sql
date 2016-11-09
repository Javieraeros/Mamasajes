-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 09-11-2016 a las 22:47:52
-- Versión del servidor: 10.1.18-MariaDB-1~jessie
-- Versión de PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Mamasajes`
--
CREATE DATABASE IF NOT EXISTS `Mamasajes` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Mamasajes`;

- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Mamasaje`
--

DROP TABLE IF EXISTS `Mamasaje`;
CREATE TABLE `Mamasaje` (
  `Dni_Mamasajista` char(9) NOT NULL,
  `Dni_Cliente` char(9) NOT NULL,
  `Sala` varchar(20) DEFAULT NULL,
  `Fecha` datetime NOT NULL,
  `Mamasaje` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `Mamasaje`:
--   `Dni_Cliente`
--       `Clientes` -> `Dni`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clientes`
--

DROP TABLE IF EXISTS `Clientes`;
CREATE TABLE `Clientes` (
  `Dni` char(9) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Apellidos` varchar(20) DEFAULT NULL,
  `Sexo` char(1) DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `Clientes`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Mamasajistas`
--

DROP TABLE IF EXISTS `Mamasajistas`;
CREATE TABLE `Mamasajistas` (
  `Dni` char(9) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `Edad` tinyint(11) NOT NULL,
  `Mamasajes` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `Mamasajistas`:
--

--
-- Volcado de datos para la tabla `Mamasajistas`
--

INSERT INTO `Mamasajistas` (`Dni`, `Nombre`, `Sexo`, `Edad`, `Mamasajes`) VALUES
('', 'sdfgds', '', 0, ''),
('0000002B', 'Cayetana de Alba Folclorica', 'M', 45, 'N'),
('1A', 'Jose Carlos de Bourbon Vino', 'H', 99, 'N'),
('21548769B', 'Agapito Juan MAteos Lopez', 'H', 64, 'S'),
('29875769B', 'Lorena Dolores Fuertes Barriga', 'M', 19, 'N'),
('45454545H', 'Javier', 'V', 89, 'N'),
('47123345G', 'Pepita de los Palotes ', 'M', 25, 'S'),
('47428156G', 'Francisca Ruiz Rodriguez', 'H', 35, 'S'),
('47428156H', 'Francisca Ruiz', 'H', 35, '0'),
('47428157H', 'Francisco Javier', 'V', 23, 'S'),
('54545454H', 'Fernando', 'V', 54, 'S'),
('as', '', '', 0, ''),
('asdfasdfa', '', '', 0, ''),
('erwr', '', '', 0, ''),
('sdfg', '', '', 0, ''),
('werg', '', '', 0, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`Dni`);

--
-- Indices de la tabla `Mamasaje`
--
ALTER TABLE `Mamasaje`
  ADD PRIMARY KEY (`Dni_Mamasajista`,`Dni_Cliente`,`Fecha`),
  ADD KEY `FK_MamasajistaCliente` (`Dni_Cliente`),
  ADD KEY `FK_MamasajistaMamasaje`(`Dni_Mamasajista`);

--
-- Indices de la tabla `Mamasajistas`
--
ALTER TABLE `Mamasajistas`
  ADD PRIMARY KEY (`Dni`),
  ADD UNIQUE KEY `Dni` (`Dni`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Mamasaje`
--
ALTER TABLE `Mamasaje`
  ADD CONSTRAINT `FK_ClienteMamasaje` FOREIGN KEY (`Dni_Cliente`) REFERENCES `Clientes` (`Dni`);
  
ALTER TABLE `Mamasaje`
  ADD CONSTRAINT `FK_MamasajistaMamasaje` FOREIGN KEY (`Dni_Mamasajista`) REFERENCES `Mamasajistas` (`Dni`);


--
-- Metadatos
--

--
-- Metadata for table Clientes
--
-- Error leyendo datos: (#1142 - SELECT comando negado para usuario: 'Javi'@'localhost' para tabla 'pma_column_info')
-- Error leyendo datos: (#1142 - SELECT comando negado para usuario: 'Javi'@'localhost' para tabla 'pma_table_uiprefs')
-- Error leyendo datos: (#1142 - SELECT comando negado para usuario: 'Javi'@'localhost' para tabla 'pma_tracking')

--
-- Metadata for table Mamasaje
--
-- Error leyendo datos: (#1142 - SELECT comando negado para usuario: 'Javi'@'localhost' para tabla 'pma_column_info')
-- Error leyendo datos: (#1142 - SELECT comando negado para usuario: 'Javi'@'localhost' para tabla 'pma_table_uiprefs')
-- Error leyendo datos: (#1142 - SELECT comando negado para usuario: 'Javi'@'localhost' para tabla 'pma_tracking')

--
-- Metadata for table Mamasajistas
--
-- Error leyendo datos: (#1142 - SELECT comando negado para usuario: 'Javi'@'localhost' para tabla 'pma_column_info')
-- Error leyendo datos: (#1142 - SELECT comando negado para usuario: 'Javi'@'localhost' para tabla 'pma_table_uiprefs')
-- Error leyendo datos: (#1142 - SELECT comando negado para usuario: 'Javi'@'localhost' para tabla 'pma_tracking')

--
-- Metadata for database Mamasajes
--
-- Error leyendo datos: (#1142 - SELECT comando negado para usuario: 'Javi'@'localhost' para tabla 'pma_bookmark')
-- Error leyendo datos: (#1142 - SELECT comando negado para usuario: 'Javi'@'localhost' para tabla 'pma_relation')
-- Error leyendo datos: (#1142 - SELECT comando negado para usuario: 'Javi'@'localhost' para tabla 'pma_savedsearches')
-- Error leyendo datos: (#1142 - SELECT comando negado para usuario: 'Javi'@'localhost' para tabla 'pma_central_columns')

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
