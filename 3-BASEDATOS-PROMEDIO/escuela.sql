-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2021 a las 03:55:26
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `numero_control` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `primer_apellido` varchar(50) NOT NULL,
  `segundo_apellido` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`numero_control`, `nombre`, `primer_apellido`, `segundo_apellido`) VALUES
(26062020, 'alejandro misael', 'de la rosa', 'zamora'),
(26062021, 'jessica nohemi', 'villa ', 'ortega'),
(26062022, 'juan jose', 'avalos', 'monserrat'),
(26062023, 'karely', 'casas', 'valdez'),
(26062024, 'gustavo adolfo', 'rivas', 'diaz'),
(26062025, 'daniel', 'alcaraz', 'lares'),
(26062026, 'jorge alberto', 'reyes', 'jaquez'),
(26062027, 'yazmin azucena', 'sariñana', 'ibarra'),
(26062028, 'violeta', 'sariñana', 'ibarra'),
(26062029, 'yonatan uriel', 'hernandez', 'montelongo'),
(26062030, 'daniela', 'najera', 's'),
(26062031, 'samanta', 'valdez', 'soto'),
(26062032, 'karen', 'valdez', 'rios'),
(26062033, 'francisco', 'flores', 'mier'),
(26062034, 'dalila', 'hernandez', 'soto'),
(26062035, 'manuel', 'terron', 'rosa'),
(26062036, 'vianey', 'vazquez', 'luna'),
(26062037, 'erick', 'torres', 'soto'),
(26062038, 'perla', 'monreal', 'castrejon'),
(26062039, 'adrian', 'nuñez', 'garcia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id` int(50) NOT NULL,
  `numero_control_id` int(50) NOT NULL,
  `id_curso` int(50) NOT NULL,
  `parcial_uno` float NOT NULL,
  `parcial_dos` float NOT NULL,
  `parcial_tres` float NOT NULL,
  `promedio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id`, `numero_control_id`, `id_curso`, `parcial_uno`, `parcial_dos`, `parcial_tres`, `promedio`) VALUES
(1, 26062023, 1, 8, 8, 8, 8),
(2, 26062030, 1, 8, 8, 9.6, 8.5),
(3, 26062021, 1, 7, 7, 7, 7),
(4, 26062026, 1, 9, 9.6, 10, 9.5),
(5, 26062020, 3, 9, 8, 10, 9),
(6, 26062029, 3, 10, 10, 10, 10),
(7, 26062022, 2, 9.2, 9.9, 9, 9.3),
(8, 26062027, 2, 2, 2, 2, 2),
(9, 26062028, 2, 7.9, 8.2, 8, 8),
(10, 26062032, 3, 7, 7, 8, 7.3),
(11, 26062025, 3, 8.2, 7.5, 6, 7.2),
(12, 26062024, 3, 9.9, 9.5, 9.2, 9.5),
(13, 26062031, 3, 0, 0, 0, 0),
(14, 26062033, 1, 5, 7, 4, 5.3),
(15, 26062037, 3, 9.6, 10, 8.6, 9.4),
(16, 26062035, 2, 6.4, 7, 6.8, 6.7),
(17, 26062036, 1, 9.4, 8.8, 9.1, 9.1),
(18, 26062037, 3, 5, 7.5, 5, 5.8),
(19, 26062038, 2, 8.5, 9.3, 8.3, 8.7),
(20, 26062039, 1, 1, 5, 6, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nombre_curso` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre_curso`) VALUES
(1, 'programacion web'),
(2, 'redes'),
(3, 'moviles');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`numero_control`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_curso` (`id_curso`),
  ADD KEY `numero_control_id` (`numero_control_id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`numero_control_id`) REFERENCES `alumnos` (`numero_control`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
