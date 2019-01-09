-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-01-2019 a las 23:02:44
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agendadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EVENTO`
--

CREATE TABLE `EVENTO` (
  `id_evento` int(11) NOT NULL,
  `titulo_evt` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `fecha_inicio_evt` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `hora_inicio_evt` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `fecha_fin_evt` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `hora_fin_evt` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `todo_dia_evt` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `fk_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `EVENTO`
--

INSERT INTO `EVENTO` (`id_evento`, `titulo_evt`, `fecha_inicio_evt`, `hora_inicio_evt`, `fecha_fin_evt`, `hora_fin_evt`, `todo_dia_evt`, `fk_id_usuario`) VALUES
(4, 'Trabajo', '2018-12-23', '17:00', '2018-12-23', '20:00', '0', 1),
(5, 'Despedida', '2018-12-24', '14:00', '2018-12-24', '15:00', '0', 2),
(6, 'Reunion', '2018-12-27', '14:00', '2018-12-27', '15:00', '0', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USUARIO`
--

CREATE TABLE `USUARIO` (
  `id_usuario` int(11) NOT NULL,
  `correo_usr` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `password_usr` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `nombre_completo_usr` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `fecha_nacimiento_usr` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `USUARIO`
--

INSERT INTO `USUARIO` (`id_usuario`, `correo_usr`, `password_usr`, `nombre_completo_usr`, `fecha_nacimiento_usr`) VALUES
(1, 'pedro@mail.com', '$2y$10$2Dva1deEG3k46LBnbo/I7OvZDZPct1mfzeTDtex7WHZB6twvtLP.S', 'Pedro Perez', '1977-02-20'),
(2, 'juan@mail.com', '$2y$10$D4PHZEf40p9QEPRQYBLw1uymJRMYKT2KcqvMy/h1APYqeMDjNf5Xq', 'Juan Gonzalez', '1988-10-10'),
(3, 'jose@mail.com', '$2y$10$EO4YVWAB0V0xt9yMXMNt7.3UTZlnvRz3NcWQIBvL5JE9oAWD3g/py', 'Jose Garcia', '1969-04-13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `EVENTO`
--
ALTER TABLE `EVENTO`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indices de la tabla `USUARIO`
--
ALTER TABLE `USUARIO`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `EVENTO`
--
ALTER TABLE `EVENTO`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `USUARIO`
--
ALTER TABLE `USUARIO`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
