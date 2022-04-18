-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2022 a las 14:59:30
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
-- Base de datos: `sanatorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `Codigo_doctor` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Especialidad` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`Codigo_doctor`, `Nombre`, `Especialidad`, `Direccion`, `Telefono`) VALUES
(1, 'Dra Sanz', 'Internista', 'Calle4#23-12', 8432517),
(2, 'Dr Perez', 'Traumatologo', 'Cra3#7-98', 83425178),
(3, 'Dr Fernandez', 'Internista', 'Calle56#98-76', 85413789),
(4, 'Dr Alonso', 'Cardiologo', 'cra25#45-19', 83423412),
(5, 'Dr Garcia', 'Hepatologia', 'Cra71#7-93', 84325175),
(6, 'Dr Nuñez', 'Neurologia', 'Calle13#90-21', 834234),
(8, 'Dra Quiroga', 'Pediatra', 'Cra78#3-45', 83423412),
(9, 'DR.Latorre', 'Pediatria', 'Cra74#24-56', 8432517),
(10, 'DrLopez', 'Ginecologia', 'CRa 21#70-94', 83425178),
(11, 'Dr Campo', 'Opstetra', 'Calle20#49-51', 8432517);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `codigo_paciente` int(11) NOT NULL,
  `Diagnostico` varchar(50) NOT NULL,
  `Fecha` date NOT NULL,
  `Tratamiento` varchar(50) NOT NULL,
  `Código_doctor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`codigo_paciente`, `Diagnostico`, `Fecha`, `Tratamiento`, `Código_doctor`) VALUES
(5, 'Apendicitis', '0000-00-00', 'Cirugia', 1),
(28, 'Artritis', '0000-00-00', 'Cirugia', 2),
(5, 'Apendicitis', '2012-06-08', 'Cirugia', 1),
(28, 'Artritis', '2001-07-09', 'Cirugia', 2),
(4, 'Diabetes', '2009-09-02', 'Dieta', 3),
(12, 'Gripe', '2009-02-10', 'Acetaminafen', 5),
(62, 'Sarampion', '2009-02-11', 'Sinus', 6),
(45, 'Sinusitis', '2009-02-12', 'Sinus', 7),
(23, 'Cirrosis', '2009-03-13', 'Clamoxil', 8),
(12, 'Amigdalitis ', '2009-03-14', 'Clamoxil', 9),
(6, 'Anemia', '2009-03-14', 'Purgante', 10),
(13, 'Migraña', '2009-04-16', 'Acetaminafen', 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`Codigo_doctor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medicos`
--
ALTER TABLE `medicos`
  MODIFY `Codigo_doctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
