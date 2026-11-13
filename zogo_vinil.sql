-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 13-11-2026 a las 05:47:25
-- Versión del servidor: 8.1.0
-- Versión de PHP: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zogo_vinil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id_carrito` int NOT NULL,
  `id_user` int NOT NULL,
  `id_disco` int NOT NULL,
  `cantidad` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discos`
--

CREATE TABLE `discos` (
  `id_disco` int NOT NULL,
  `nombre_disco` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `portada` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  `artista` varchar(100) NOT NULL,
  `disquera` varchar(100) NOT NULL,
  `anio` year NOT NULL,
  `color` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id_compra` int NOT NULL,
  `id_user` int NOT NULL,
  `id_disco` int NOT NULL,
  `cantidad` int NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int NOT NULL,
  `nombre_user` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `numero_tarjeta` varchar(20) NOT NULL,
  `direccion_postal` text NOT NULL,
  `rol` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id_carrito`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_disco` (`id_disco`);

--
-- Indices de la tabla `discos`
--
ALTER TABLE `discos`
  ADD PRIMARY KEY (`id_disco`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_disco` (`id_disco`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id_carrito` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `discos`
--
ALTER TABLE `discos`
  MODIFY `id_disco` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id_compra` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `usuarios` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`id_disco`) REFERENCES `discos` (`id_disco`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `usuarios` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `historial_ibfk_2` FOREIGN KEY (`id_disco`) REFERENCES `discos` (`id_disco`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
