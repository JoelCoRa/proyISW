-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-12-2022 a las 05:33:40
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
-- Base de datos: `mathebasics`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `admin_name` varchar(10) NOT NULL,
  `admin_password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exam`
--

CREATE TABLE `exam` (
  `id_exam` int(10) NOT NULL,
  `unit` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `exam`
--

INSERT INTO `exam` (`id_exam`, `unit`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('6kPV-nHt3HyQwk70_-D9VVAsu33-ayUI', 1672374029, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('6rXqrj6Tnqj-3FxBWhrMbVVm1cC6zd_g', 1672361479, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"passport\":{\"user\":5}}'),
('BRLdfmQ3EAWf2Nm5U8qGrksgnHuR_ldz', 1672374726, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"passport\":{\"user\":1}}'),
('DtsNiB-OqSzPW2r-dIHWitjKZhFQY8l6', 1672374664, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('g2Nw4Kb7_0wliGYsXFJF1vojmfme1-zk', 1672373760, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),
('gPDgepo8Pptfe98ftVSqfkTWKe5aioJT', 1672374074, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topic`
--

CREATE TABLE `topic` (
  `id_topic` int(10) NOT NULL,
  `topic_name` varchar(50) NOT NULL,
  `unit` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `topic`
--

INSERT INTO `topic` (`id_topic`, `topic_name`, `unit`) VALUES
(1, '1', 1),
(2, '2', 1),
(3, '3', 1),
(4, '1', 2),
(5, '2', 2),
(6, '3', 2),
(7, '1', 3),
(8, '2', 3),
(9, '3', 3),
(10, '4', 3),
(11, '5', 3),
(12, '1', 4),
(13, '2', 4),
(14, '1', 5),
(15, '2', 5),
(16, '1', 6),
(17, '2', 6),
(18, '3', 6),
(19, '4', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unit`
--

CREATE TABLE `unit` (
  `id_unit` int(10) NOT NULL,
  `unit_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `unit`
--

INSERT INTO `unit` (`id_unit`, `unit_name`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `user_password` varchar(60) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `type_course` int(1) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `user_apellido` varchar(20) NOT NULL,
  `user_edad` int(3) NOT NULL,
  `user_telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `user_name`, `user_password`, `user_email`, `type_course`, `name`, `user_apellido`, `user_edad`, `user_telefono`) VALUES
(1, 'gris2020', '$2a$10$jrK86bfgb8Mg2bczseYdCuSmHGSK7QswSM3WJkV73.F7Tx1gdfeCG', 'gris@gmail.com', 1, '', '', 0, 0),
(2, 'Elvis', '$2a$10$yToxaA/f829mb9DgxHPf0u7v6goS0gH5GoXMJFSXoytnab0FoaepG', 'elvis@gmail.com', NULL, '', '', 0, 0),
(3, 'fer', '$2a$10$Z3J3Wf3.B2Sqg6t/f5Km5eNc0N70t9pdeDCIBC86.RHT2TPXp30je', 'fer@gmail.com', 1, 'e', '', 0, 0),
(4, 'mon', '$2a$10$qR9Mu47CBWQsErQ0x6gasONhefPK4RiSW52OLocefMxaDjJQSnc8a', 'mon@gmail.com', 1, 'monse', '', 0, 0),
(5, 'JOSE99', '$2a$10$8AwvbkBUL/Q3LbRMtaU8pOh/juTkK.00BtIT38gyZqN1DQ0YkiKaa', 'jose@gmail.com', 1, 'Jose Antonio', 'Juarez Garcia', 25, 666666666),
(6, 'Gris2', '$2a$10$.PBwH9wu6TpLueuxYvXCbO38NS44g3vJgQeF8P5bfhBD9/EymOZS6', 'gris2@gmail.com', 1, 'Gris Alberto', 'Garcia Chavez', 33, 543212345),
(7, 'frjfr', '$2a$10$LoOlenW.BLOh7MlMdu6J9emDh9kkTt61Ydy6m/7.NuI19r/dDaLvS', 'ffr@gmail.com', 1, 'firfj', 'jiji', 888, 495959),
(8, 'ijedeijd', '$2a$10$d.9AcwUa..dyYF1Cu4B1z.uam20JE4vMaKxwZG1Ohwa/0td7GqY0G', 'dede@gmail.com', 1, 'fjifdij', 'jiji', 99, 0),
(9, 'rff', '$2a$10$prj86yJu2cUPnt526/JdieIaHA0Sj37m0NhLqXpJnA8pcSC4Y/LA2', 'rffr@gmail.com', 1, 'efef', 'huhu', 87, 6556);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_exam`
--

CREATE TABLE `user_exam` (
  `id_user_exam` int(10) NOT NULL,
  `user` int(10) NOT NULL,
  `exam` int(10) NOT NULL,
  `score` int(10) NOT NULL,
  `passed` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_exam`
--

INSERT INTO `user_exam` (`id_user_exam`, `user`, `exam`, `score`, `passed`) VALUES
(1, 1, 1, 10, 1),
(2, 1, 2, 5, 1),
(3, 1, 3, 2, 1),
(4, 1, 4, 0, 1),
(5, 1, 5, 3, 1),
(6, 1, 6, 0, 1),
(7, 3, 1, 0, 1),
(8, 3, 2, 0, 1),
(9, 3, 3, 0, 1),
(10, 3, 4, 0, 1),
(11, 3, 5, 0, 1),
(12, 3, 6, 0, 1),
(13, 4, 1, 0, 1),
(14, 4, 2, 0, 1),
(15, 4, 3, 0, 1),
(16, 4, 4, 0, 1),
(17, 4, 5, 0, 1),
(18, 4, 6, 0, 1),
(19, 5, 1, 0, 1),
(20, 5, 2, 0, 1),
(21, 5, 3, 0, 1),
(22, 5, 4, 0, 1),
(23, 5, 5, 0, 1),
(24, 5, 6, 0, 1),
(25, 6, 1, 0, 1),
(26, 6, 2, 0, 1),
(27, 6, 3, 0, 1),
(28, 6, 4, 0, 1),
(29, 6, 5, 0, 1),
(30, 6, 6, 0, 1),
(31, 7, 1, 0, 1),
(32, 7, 2, 0, 1),
(33, 7, 3, 0, 1),
(34, 7, 4, 0, 1),
(35, 7, 5, 0, 1),
(36, 7, 6, 0, 1),
(37, 8, 1, 0, 1),
(38, 8, 2, 0, 1),
(39, 8, 3, 0, 1),
(40, 8, 4, 0, 1),
(41, 8, 5, 0, 1),
(42, 8, 6, 0, 1),
(43, 9, 1, 0, 1),
(44, 9, 2, 0, 1),
(45, 9, 3, 0, 1),
(46, 9, 4, 0, 1),
(47, 9, 5, 0, 1),
(48, 9, 6, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_topic`
--

CREATE TABLE `user_topic` (
  `id_user_topic` int(10) NOT NULL,
  `user` int(10) NOT NULL,
  `topic` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_topic`
--

INSERT INTO `user_topic` (`id_user_topic`, `user`, `topic`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 3, 1),
(21, 3, 2),
(22, 3, 3),
(23, 3, 4),
(24, 3, 5),
(25, 3, 6),
(26, 3, 7),
(27, 3, 8),
(28, 3, 9),
(29, 3, 10),
(30, 3, 11),
(31, 3, 12),
(32, 3, 13),
(33, 3, 14),
(34, 3, 15),
(35, 3, 16),
(36, 3, 17),
(37, 3, 18),
(38, 3, 19),
(39, 4, 1),
(40, 4, 2),
(41, 4, 3),
(42, 4, 4),
(43, 4, 5),
(44, 4, 6),
(45, 4, 7),
(46, 4, 8),
(47, 4, 9),
(48, 4, 10),
(49, 4, 11),
(50, 4, 12),
(51, 4, 13),
(52, 4, 14),
(53, 4, 15),
(54, 4, 16),
(55, 4, 17),
(56, 4, 18),
(57, 4, 19),
(58, 5, 1),
(59, 5, 2),
(60, 5, 3),
(61, 5, 4),
(62, 5, 5),
(63, 5, 6),
(64, 5, 7),
(65, 5, 8),
(66, 5, 9),
(67, 5, 10),
(68, 5, 11),
(69, 5, 12),
(70, 5, 13),
(71, 5, 14),
(72, 5, 15),
(73, 5, 16),
(74, 5, 17),
(75, 5, 18),
(76, 5, 19),
(77, 6, 1),
(78, 6, 2),
(79, 6, 3),
(80, 6, 4),
(81, 6, 5),
(82, 6, 6),
(83, 6, 7),
(84, 6, 8),
(85, 6, 9),
(86, 6, 10),
(87, 6, 11),
(88, 6, 12),
(89, 6, 13),
(90, 6, 14),
(91, 6, 15),
(92, 6, 16),
(93, 6, 17),
(94, 6, 18),
(95, 6, 19),
(96, 7, 1),
(97, 7, 2),
(98, 7, 3),
(99, 7, 4),
(100, 7, 5),
(101, 7, 6),
(102, 7, 7),
(103, 7, 8),
(104, 7, 9),
(105, 7, 10),
(106, 7, 11),
(107, 7, 12),
(108, 7, 13),
(109, 7, 14),
(110, 7, 15),
(111, 7, 16),
(112, 7, 17),
(113, 7, 18),
(114, 7, 19),
(115, 8, 1),
(116, 8, 2),
(117, 8, 3),
(118, 8, 4),
(119, 8, 5),
(120, 8, 6),
(121, 8, 7),
(122, 8, 8),
(123, 8, 9),
(124, 8, 10),
(125, 8, 11),
(126, 8, 12),
(127, 8, 13),
(128, 8, 14),
(129, 8, 15),
(130, 8, 16),
(131, 8, 17),
(132, 8, 18),
(133, 8, 19),
(134, 9, 1),
(135, 9, 2),
(136, 9, 3),
(137, 9, 4),
(138, 9, 5),
(139, 9, 6),
(140, 9, 7),
(141, 9, 8),
(142, 9, 9),
(143, 9, 10),
(144, 9, 11),
(145, 9, 12),
(146, 9, 13),
(147, 9, 14),
(148, 9, 15),
(149, 9, 16),
(150, 9, 17),
(151, 9, 18),
(152, 9, 19);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id_exam`),
  ADD KEY `unit` (`unit`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indices de la tabla `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id_topic`),
  ADD KEY `unit` (`unit`);

--
-- Indices de la tabla `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id_unit`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indices de la tabla `user_exam`
--
ALTER TABLE `user_exam`
  ADD PRIMARY KEY (`id_user_exam`),
  ADD KEY `user` (`user`),
  ADD KEY `exam` (`exam`);

--
-- Indices de la tabla `user_topic`
--
ALTER TABLE `user_topic`
  ADD PRIMARY KEY (`id_user_topic`),
  ADD KEY `user` (`user`),
  ADD KEY `topic` (`topic`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `exam`
--
ALTER TABLE `exam`
  MODIFY `id_exam` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `topic`
--
ALTER TABLE `topic`
  MODIFY `id_topic` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `unit`
--
ALTER TABLE `unit`
  MODIFY `id_unit` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `user_exam`
--
ALTER TABLE `user_exam`
  MODIFY `id_user_exam` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `user_topic`
--
ALTER TABLE `user_topic`
  MODIFY `id_user_topic` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`unit`) REFERENCES `unit` (`id_unit`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`unit`) REFERENCES `unit` (`id_unit`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `user_exam`
--
ALTER TABLE `user_exam`
  ADD CONSTRAINT `user_exam_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_exam_ibfk_2` FOREIGN KEY (`exam`) REFERENCES `exam` (`id_exam`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `user_topic`
--
ALTER TABLE `user_topic`
  ADD CONSTRAINT `user_topic_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_topic_ibfk_2` FOREIGN KEY (`topic`) REFERENCES `topic` (`id_topic`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
