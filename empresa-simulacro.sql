-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2022 a las 19:26:20
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `CodC` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Localidad` varchar(50) NOT NULL,
  `Categ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`CodC`, `Nombre`, `Localidad`, `Categ`) VALUES
(1, 'José Sanchez', 'Arganda', 18),
(2, 'Manuel Diaz', 'Arganda', 15),
(3, 'Juan Pérez', 'Rivas', 20),
(4, 'Luis Ortiz', 'Arganda', 18),
(5, 'Javier Martin', 'Loeches', 12),
(6, 'Carmen Pérez', 'Rivas', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `máquinas`
--

CREATE TABLE `máquinas` (
  `CodM` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `PrecioHora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `máquinas`
--

INSERT INTO `máquinas` (`CodM`, `Nombre`, `PrecioHora`) VALUES
(1, 'Excavadora', 15000),
(2, 'Hormigonera', 10000),
(3, 'Volquete', 11000),
(4, 'Apisonadora', 18000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `CodP` int(11) NOT NULL,
  `Descrip` varchar(50) NOT NULL,
  `Localidad` varchar(50) NOT NULL,
  `Cliente` varchar(50) NOT NULL,
  `Telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`CodP`, `Descrip`, `Localidad`, `Cliente`, `Telefono`) VALUES
(1, 'Garaje', 'Arganda', 'Felipe Sol', 600111111),
(2, 'Solado', 'Rivas', 'José Perez', 912222222),
(3, 'Garaje', 'Arganda', 'Rosa López', 666999666),
(4, 'Techado', 'Loeches', 'José Perez', 913333333),
(5, 'Buhardilla', 'Rivas', 'Ana Botijo', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE `trabajos` (
  `CodC` varchar(3) NOT NULL,
  `CodM` varchar(3) NOT NULL,
  `CodP` varchar(3) NOT NULL,
  `Fecha` date NOT NULL,
  `Tiempo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajos`
--

INSERT INTO `trabajos` (`CodC`, `CodM`, `CodP`, `Fecha`, `Tiempo`) VALUES
('CO2', 'MO3', 'P01', '2002-09-10', 100),
('CO3', 'MO1', 'PO2', '2002-09-10', 200),
('CO5', 'MO3', 'PO2', '2002-09-10', 150),
('CO4', 'MO3', 'PO2', '2002-09-10', 90),
('CO1', 'MO2', 'PO2', '2002-09-12', 120),
('CO2', 'MO3', 'PO3', '2002-09-13', 30),
('CO3', 'MO1', 'PO4', '2002-09-15', 300),
('CO2', 'MO3', 'PO2', '2002-09-15', 0),
('CO1', 'MO3', 'PO4', '2002-09-15', 180),
('CO5', 'MO3', 'PO4', '2002-09-15', 90),
('CO1', 'MO2', 'PO4', '2002-09-17', 0),
('CO2', 'MO3', 'PO1', '2002-09-18', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`CodC`);

--
-- Indices de la tabla `máquinas`
--
ALTER TABLE `máquinas`
  ADD PRIMARY KEY (`CodM`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`CodP`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conductores`
--
ALTER TABLE `conductores`
  MODIFY `CodC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `máquinas`
--
ALTER TABLE `máquinas`
  MODIFY `CodM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `CodP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
