-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2023 a las 04:37:09
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pentagrama`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_`
--

CREATE TABLE `album_` (
  `id_album` int(11) NOT NULL,
  `id_artista` int(11) NOT NULL,
  `nombre_album` varchar(50) NOT NULL,
  `cantidad_canciones` int(11) NOT NULL,
  `portada` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `album_`
--

INSERT INTO `album_` (`id_album`, `id_artista`, `nombre_album`, `cantidad_canciones`, `portada`) VALUES
(1, 1, '1989', 13, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/1989_album_logo.png/640px-1989_album_logo.'),
(2, 2, 'After Hours', 14, 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c1/The_Weeknd_-_After_Hours.png/220px-The_Weeknd_-'),
(3, 3, 'Civilizacion', 13, 'https://upload.wikimedia.org/wikipedia/en/1/11/Civilizaci%C3%B3n_%28Los_Piojos%29.jpg'),
(4, 4, 'Dame de eso', 12, 'https://akamai.sscdn.co/letras/360x360/albuns/3/2/4/c/591581502719888.jpg'),
(5, 5, 'Desechable', 10, 'https://is1-ssl.mzstatic.com/image/thumb/Music/8b/7f/b0/mzi.avklgppt.jpg/296x296bb.webp'),
(6, 6, 'Esta es mi vida', 12, 'https://upload.wikimedia.org/wikipedia/en/1/1a/Esta_es_mi_vida_por_JJ.jpg'),
(7, 7, 'Fijate bien', 11, 'https://upload.wikimedia.org/wikipedia/en/b/be/Juanesf%C3%ADjatebien580x580.jpg'),
(8, 8, 'Jessico', 12, 'https://i.ytimg.com/vi/TM3SY_DSvAU/maxresdefault.jpg'),
(9, 9, 'La clave para conquistarte', 12, 'https://is1-ssl.mzstatic.com/image/thumb/Music117/v4/cc/07/00/cc07009d-714b-4d4b-e337-3823c82cdbd3/5099748494429.jpg/296x296bb.webp'),
(10, 10, 'Por lo menos hoy', 12, 'https://www.cmtv.com.ar/tapas-cd/ntvghoy.webp'),
(11, 11, 'Quien dijo ayer', 29, 'https://upload.wikimedia.org/wikipedia/en/d/d4/Quien_Dijo_Ayer.jpg'),
(12, 12, 'Todo comenzó bailando', 12, 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/0e/e2/09/0ee209fd-8be6-fbdd-7172-f686b421d536/190374225090.jpg/296x296bb.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_`
--

CREATE TABLE `artista_` (
  `id_artista` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cantidad_albums` int(11) NOT NULL,
  `pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artista_`
--

INSERT INTO `artista_` (`id_artista`, `nombre`, `cantidad_albums`, `pais`) VALUES
(1, 'Axel Fernando', 9, 'Argentina'),
(2, 'Babasonicos', 13, 'Argentina'),
(3, 'Carlos Baute', 11, 'Venezuela'),
(4, 'Jesse y Joy', 13, 'Mexico'),
(5, 'Juanes', 15, 'Colombia'),
(6, 'Los Piojos', 10, 'Argentina'),
(7, 'Marama', 1, 'Uruguay'),
(8, 'Mon Laferte', 9, 'Chile'),
(9, 'No te va a gustar', 11, 'Uruguay'),
(10, 'Ricardo Arjona', 15, 'Guatemala'),
(11, 'Taylor Swift', 13, 'Estados Unidos'),
(12, 'The Weeknd', 9, 'Canada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album_`
--
ALTER TABLE `album_`
  ADD PRIMARY KEY (`id_album`),
  ADD KEY `fk_artista_album` (`id_artista`);

--
-- Indices de la tabla `artista_`
--
ALTER TABLE `artista_`
  ADD PRIMARY KEY (`id_artista`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album_`
--
ALTER TABLE `album_`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `artista_`
--
ALTER TABLE `artista_`
  MODIFY `id_artista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `album_`
--
ALTER TABLE `album_`
  ADD CONSTRAINT `fk_artista_album` FOREIGN KEY (`id_artista`) REFERENCES `artista_` (`id_artista`);


--
-- Metadatos
--
USE `phpmyadmin`;

--
-- Metadatos para la tabla album_
--

--
-- Metadatos para la tabla artista_
--

--
-- Metadatos para la tabla usuario
--

--
-- Metadatos para la base de datos pentagrama
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
