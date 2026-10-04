-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2026 a las 01:30:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro_animacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

CREATE TABLE `director` (
  `id_director` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `director`
--

INSERT INTO `director` (`id_director`, `nombre`, `apellido`) VALUES
(1, 'Hayao', 'Miyazaki'),
(2, 'Satoshi', 'Kon'),
(3, 'Mamoru', 'Hosoda'),
(4, 'Makoto', 'Shinkai'),
(5, 'Henry', 'Selick'),
(6, 'John', 'Stevenson'),
(7, 'Mark', 'Osborne'),
(8, 'Dean', 'DeBlois'),
(9, 'Chris', 'Sanders'),
(10, 'Peter', 'Hastings'),
(11, 'Shinji', 'Takamatsu'),
(12, 'Yōichi', 'Fujita'),
(13, 'Chizuru', 'Miyawaki'),
(14, 'Genndy', 'Tartakovsky'),
(15, 'Randy', 'Myers'),
(16, 'Robert', 'Alvarez'),
(17, 'Rob', 'Renzetti'),
(18, 'Chris', 'Savino'),
(19, 'Masayuki', 'Kojima');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudio`
--

CREATE TABLE `estudio` (
  `id_estudio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudio`
--

INSERT INTO `estudio` (`id_estudio`, `nombre`) VALUES
(9, 'Cartoon Network Studios'),
(8, 'DreamWorks Animation'),
(4, 'Laika'),
(1, 'Madhouse'),
(5, 'MAPPA'),
(7, 'Nickelodeon Animation Studio'),
(3, 'Pixar'),
(2, 'Studio Ghibli'),
(6, 'Sunrise');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre_genero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre_genero`) VALUES
(1, 'Accion'),
(2, 'Aventura'),
(7, 'Ciencia Ficcion'),
(3, 'Comedia'),
(4, 'Drama'),
(9, 'Fantasia'),
(6, 'Misterio'),
(8, 'Romance'),
(5, 'Terror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medio_visualizacion`
--

CREATE TABLE `medio_visualizacion` (
  `id_medio` int(11) NOT NULL,
  `nombre_medio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medio_visualizacion`
--

INSERT INTO `medio_visualizacion` (`id_medio`, `nombre_medio`) VALUES
(3, 'Cine'),
(6, 'Compartido'),
(2, 'Crunchyroll'),
(5, 'DVD'),
(1, 'Netflix'),
(4, 'Televisión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obra`
--

CREATE TABLE `obra` (
  `id_obra` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `año` year(4) NOT NULL,
  `duracion` int(11) DEFAULT NULL,
  `puntuacion` decimal(3,1) DEFAULT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_estudio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `obra`
--

INSERT INTO `obra` (`id_obra`, `nombre`, `año`, `duracion`, `puntuacion`, `id_tipo`, `id_estudio`) VALUES
(1, 'Gintama', '2006', NULL, 8.2, 3, 6),
(2, 'Teenage Mutant Ninja Turtles', '2012', NULL, 8.7, 2, 7),
(3, 'Coraline', '2009', 100, 8.5, 1, 4),
(4, 'Monster', '2004', NULL, 9.5, 3, 1),
(5, 'Kung Fu Panda', '2008', 92, 9.0, 1, 8),
(6, 'Samurai Jack', '2001', NULL, 9.0, 2, 9),
(7, 'How to Train Your Dragon', '2010', 98, 9.0, 1, 8),
(8, 'Dog Man', '2025', 89, 7.5, 1, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obra_director`
--

CREATE TABLE `obra_director` (
  `id_obra` int(11) NOT NULL,
  `id_director` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `obra_director`
--

INSERT INTO `obra_director` (`id_obra`, `id_director`) VALUES
(1, 11),
(1, 12),
(1, 13),
(3, 5),
(4, 19),
(5, 6),
(5, 7),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(7, 8),
(7, 9),
(8, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obra_genero`
--

CREATE TABLE `obra_genero` (
  `id_obra` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `obra_genero`
--

INSERT INTO `obra_genero` (`id_obra`, `id_genero`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 7),
(3, 5),
(3, 6),
(4, 4),
(4, 6),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 7),
(7, 2),
(7, 5),
(8, 2),
(8, 3),
(8, 5),
(8, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obra_medio`
--

CREATE TABLE `obra_medio` (
  `id_obra` int(11) NOT NULL,
  `id_medio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `obra_medio`
--

INSERT INTO `obra_medio` (`id_obra`, `id_medio`) VALUES
(1, 2),
(2, 4),
(3, 5),
(4, 1),
(5, 3),
(6, 6),
(7, 4),
(8, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obra_personaje`
--

CREATE TABLE `obra_personaje` (
  `id_obra` int(11) NOT NULL,
  `id_personaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `obra_personaje`
--

INSERT INTO `obra_personaje` (`id_obra`, `id_personaje`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 8),
(4, 9),
(4, 10),
(4, 11),
(5, 12),
(5, 13),
(6, 14),
(7, 15),
(7, 16),
(8, 17),
(8, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personaje`
--

CREATE TABLE `personaje` (
  `id_personaje` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personaje`
--

INSERT INTO `personaje` (`id_personaje`, `nombre`) VALUES
(1, 'Gintoki Sakata'),
(2, 'Kagura'),
(3, 'Shinpachi Shimura'),
(4, 'Leonardo'),
(5, 'Donatello'),
(6, 'Raphael'),
(7, 'Michelangelo'),
(8, 'Coraline Jones'),
(9, 'Johan Liebert'),
(10, 'Kenzo Tenma'),
(11, 'Nina Fortner'),
(12, 'Po'),
(13, 'Tigresa'),
(14, 'Jack'),
(15, 'Hipo'),
(16, 'Chimuelo'),
(17, 'Dog Man'),
(18, 'Petey');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporada`
--

CREATE TABLE `temporada` (
  `id_temporada` int(11) NOT NULL,
  `id_obra` int(11) NOT NULL,
  `numero_temporada` int(11) NOT NULL,
  `cantidad_capitulos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `temporada`
--

INSERT INTO `temporada` (`id_temporada`, `id_obra`, `numero_temporada`, `cantidad_capitulos`) VALUES
(1, 4, 1, 74),
(2, 2, 1, 26),
(3, 2, 2, 26),
(4, 2, 3, 26),
(5, 2, 4, 26),
(6, 2, 5, 20),
(7, 6, 1, 13),
(8, 6, 2, 13),
(9, 6, 3, 13),
(10, 6, 4, 13),
(11, 6, 5, 10),
(12, 1, 1, 49),
(13, 1, 2, 50),
(14, 1, 3, 51),
(15, 1, 4, 51),
(16, 1, 5, 51),
(17, 1, 6, 13),
(18, 1, 7, 51),
(19, 1, 8, 12),
(20, 1, 9, 13),
(21, 1, 10, 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_obra`
--

CREATE TABLE `tipo_obra` (
  `id_tipo` int(11) NOT NULL,
  `nombre_tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_obra`
--

INSERT INTO `tipo_obra` (`id_tipo`, `nombre_tipo`) VALUES
(3, 'Anime'),
(1, 'Pelicula'),
(2, 'Serie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(80) NOT NULL,
  `email` varchar(120) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `fecha_registro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_obra`
--

CREATE TABLE `usuario_obra` (
  `id_usuario` int(11) NOT NULL,
  `id_obra` int(11) NOT NULL,
  `estado` enum('Visto','Viendo','Pendiente','Abandonado') NOT NULL DEFAULT 'Pendiente',
  `puntuacion_personal` decimal(3,1) DEFAULT NULL,
  `capitulos_vistos` int(11) DEFAULT 0,
  `fecha_actualizacion` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id_director`);

--
-- Indices de la tabla `estudio`
--
ALTER TABLE `estudio`
  ADD PRIMARY KEY (`id_estudio`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`),
  ADD UNIQUE KEY `nombre_genero` (`nombre_genero`);

--
-- Indices de la tabla `medio_visualizacion`
--
ALTER TABLE `medio_visualizacion`
  ADD PRIMARY KEY (`id_medio`),
  ADD UNIQUE KEY `nombre_medio` (`nombre_medio`);

--
-- Indices de la tabla `obra`
--
ALTER TABLE `obra`
  ADD PRIMARY KEY (`id_obra`),
  ADD KEY `id_tipo` (`id_tipo`),
  ADD KEY `id_estudio` (`id_estudio`);

--
-- Indices de la tabla `obra_director`
--
ALTER TABLE `obra_director`
  ADD PRIMARY KEY (`id_obra`,`id_director`),
  ADD KEY `id_director` (`id_director`);

--
-- Indices de la tabla `obra_genero`
--
ALTER TABLE `obra_genero`
  ADD PRIMARY KEY (`id_obra`,`id_genero`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `obra_medio`
--
ALTER TABLE `obra_medio`
  ADD PRIMARY KEY (`id_obra`,`id_medio`),
  ADD KEY `id_medio` (`id_medio`);

--
-- Indices de la tabla `obra_personaje`
--
ALTER TABLE `obra_personaje`
  ADD PRIMARY KEY (`id_obra`,`id_personaje`),
  ADD KEY `id_personaje` (`id_personaje`);

--
-- Indices de la tabla `personaje`
--
ALTER TABLE `personaje`
  ADD PRIMARY KEY (`id_personaje`);

--
-- Indices de la tabla `temporada`
--
ALTER TABLE `temporada`
  ADD PRIMARY KEY (`id_temporada`),
  ADD KEY `id_obra` (`id_obra`);

--
-- Indices de la tabla `tipo_obra`
--
ALTER TABLE `tipo_obra`
  ADD PRIMARY KEY (`id_tipo`),
  ADD UNIQUE KEY `nombre_tipo` (`nombre_tipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `usuario_obra`
--
ALTER TABLE `usuario_obra`
  ADD PRIMARY KEY (`id_usuario`,`id_obra`),
  ADD KEY `fk_usuario_obra_obra` (`id_obra`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `director`
--
ALTER TABLE `director`
  MODIFY `id_director` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `estudio`
--
ALTER TABLE `estudio`
  MODIFY `id_estudio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `medio_visualizacion`
--
ALTER TABLE `medio_visualizacion`
  MODIFY `id_medio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `obra`
--
ALTER TABLE `obra`
  MODIFY `id_obra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personaje`
--
ALTER TABLE `personaje`
  MODIFY `id_personaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `temporada`
--
ALTER TABLE `temporada`
  MODIFY `id_temporada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tipo_obra`
--
ALTER TABLE `tipo_obra`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `obra`
--
ALTER TABLE `obra`
  ADD CONSTRAINT `obra_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_obra` (`id_tipo`),
  ADD CONSTRAINT `obra_ibfk_2` FOREIGN KEY (`id_estudio`) REFERENCES `estudio` (`id_estudio`);

--
-- Filtros para la tabla `obra_director`
--
ALTER TABLE `obra_director`
  ADD CONSTRAINT `obra_director_ibfk_1` FOREIGN KEY (`id_obra`) REFERENCES `obra` (`id_obra`),
  ADD CONSTRAINT `obra_director_ibfk_2` FOREIGN KEY (`id_director`) REFERENCES `director` (`id_director`);

--
-- Filtros para la tabla `obra_genero`
--
ALTER TABLE `obra_genero`
  ADD CONSTRAINT `obra_genero_ibfk_1` FOREIGN KEY (`id_obra`) REFERENCES `obra` (`id_obra`),
  ADD CONSTRAINT `obra_genero_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`);

--
-- Filtros para la tabla `obra_medio`
--
ALTER TABLE `obra_medio`
  ADD CONSTRAINT `obra_medio_ibfk_1` FOREIGN KEY (`id_obra`) REFERENCES `obra` (`id_obra`),
  ADD CONSTRAINT `obra_medio_ibfk_2` FOREIGN KEY (`id_medio`) REFERENCES `medio_visualizacion` (`id_medio`);

--
-- Filtros para la tabla `obra_personaje`
--
ALTER TABLE `obra_personaje`
  ADD CONSTRAINT `obra_personaje_ibfk_1` FOREIGN KEY (`id_obra`) REFERENCES `obra` (`id_obra`),
  ADD CONSTRAINT `obra_personaje_ibfk_2` FOREIGN KEY (`id_personaje`) REFERENCES `personaje` (`id_personaje`);

--
-- Filtros para la tabla `temporada`
--
ALTER TABLE `temporada`
  ADD CONSTRAINT `temporada_ibfk_1` FOREIGN KEY (`id_obra`) REFERENCES `obra` (`id_obra`);

--
-- Filtros para la tabla `usuario_obra`
--
ALTER TABLE `usuario_obra`
  ADD CONSTRAINT `fk_usuario_obra_obra` FOREIGN KEY (`id_obra`) REFERENCES `obra` (`id_obra`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario_obra_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
