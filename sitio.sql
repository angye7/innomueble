-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2023 a las 03:50:23
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sitio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `muebles`
--

CREATE TABLE `muebles` (
  `idprod` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Imagen` varchar(1000) NOT NULL,
  `TipoMueble` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `material` varchar(100) NOT NULL,
  `alto` float NOT NULL,
  `ancho` float NOT NULL,
  `profundidad` float NOT NULL,
  `Descripcion` varchar(500) NOT NULL,
  `Stock` int(11) NOT NULL,
  `PrecioBase` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `muebles`
--

INSERT INTO `muebles` (`idprod`, `Nombre`, `Imagen`, `TipoMueble`, `color`, `material`, `alto`, `ancho`, `profundidad`, `Descripcion`, `Stock`, `PrecioBase`) VALUES
(447, 'Stylus', '1687911026_images (1).jpeg', 'Escritorio', 'Blanco', 'Melamina', 75, 120, 50, 'Mueble perfecto para estudiantes o trabajadores home office ', 4, 499.9),
(448, 'Zanna', '1687911088_tienda_000634_5dda287265966de311bd6df5e94b9a46da70c284_producto_large_90.jpg', 'Escritorio', 'Crema', 'Melamina', 73, 100, 50, 'Mueble para escolares o trabajadores home office', 10, 199.9),
(449, 'Zyan', '1687911180_images.jpeg', 'Escritorio', 'Blanco y crema', 'Melamina', 70, 130, 50, 'Mueble para estudiantes', 14, 499.5),
(451, 'Indus', '1687911294_descarga.jpeg', 'Escritorio', 'Crema y negro', 'Melamina', 75, 120, 55, 'Escritorio tipo industrial', 9, 350),
(452, 'Isa', '1687911351_18057293_1.jpeg', 'Escritorio', 'Negro', 'Melamina', 80, 120, 50, 'Mueble basico multiusos', 12, 250);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiltrabajador`
--

CREATE TABLE `perfiltrabajador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfiltrabajador`
--

INSERT INTO `perfiltrabajador` (`id`, `nombre`) VALUES
(1, 'cliente'),
(2, 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldetalleventa`
--

CREATE TABLE `tbldetalleventa` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `idprod` int(11) NOT NULL,
  `PRECIOUNITARIO` decimal(20,2) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `DESCARGADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbldetalleventa`
--

INSERT INTO `tbldetalleventa` (`ID`, `IDVENTA`, `idprod`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) VALUES
(16, 13, 451, '350.00', 1, 0),
(17, 14, 452, '250.00', 1, 0),
(18, 14, 451, '350.00', 1, 0),
(19, 15, 449, '499.50', 1, 0),
(20, 15, 451, '350.00', 1, 0),
(21, 16, 448, '199.90', 1, 0),
(22, 17, 448, '199.90', 1, 0),
(23, 18, 448, '199.90', 1, 0),
(24, 19, 448, '199.90', 1, 0),
(25, 20, 448, '199.90', 1, 0),
(26, 21, 448, '199.90', 1, 0),
(27, 22, 448, '199.90', 1, 0),
(28, 23, 448, '199.90', 1, 0),
(29, 24, 448, '199.90', 1, 0),
(30, 25, 448, '199.90', 1, 0),
(31, 26, 448, '199.90', 1, 0),
(32, 27, 448, '199.90', 1, 0),
(33, 28, 448, '199.90', 1, 0),
(35, 29, 448, '199.90', 1, 0),
(37, 30, 447, '499.90', 1, 0),
(38, 31, 451, '350.00', 1, 0),
(39, 31, 447, '499.90', 1, 0),
(40, 32, 451, '350.00', 1, 0),
(41, 32, 447, '499.90', 1, 0),
(42, 33, 451, '350.00', 1, 0),
(43, 33, 447, '499.90', 1, 0),
(44, 34, 448, '199.90', 1, 0),
(45, 34, 452, '250.00', 1, 0),
(46, 35, 448, '199.90', 1, 0),
(47, 35, 447, '499.90', 1, 0),
(48, 36, 448, '199.90', 1, 0),
(49, 36, 447, '499.90', 1, 0),
(50, 37, 448, '199.90', 1, 0),
(51, 37, 447, '499.90', 1, 0),
(52, 38, 448, '199.90', 1, 0),
(53, 38, 447, '499.90', 1, 0),
(54, 39, 448, '199.90', 1, 0),
(55, 39, 447, '499.90', 1, 0),
(56, 40, 448, '199.90', 1, 0),
(57, 40, 447, '499.90', 1, 0),
(58, 41, 448, '199.90', 1, 0),
(59, 41, 447, '499.90', 1, 0),
(60, 42, 448, '199.90', 1, 0),
(61, 42, 447, '499.90', 1, 0),
(62, 43, 448, '199.90', 1, 0),
(63, 43, 447, '499.90', 1, 0),
(64, 44, 448, '199.90', 1, 0),
(65, 44, 447, '499.90', 1, 0),
(66, 45, 448, '199.90', 1, 0),
(67, 45, 447, '499.90', 1, 0),
(68, 46, 448, '199.90', 1, 0),
(69, 46, 447, '499.90', 1, 0),
(70, 47, 448, '199.90', 1, 0),
(71, 47, 447, '499.90', 1, 0),
(72, 48, 448, '199.90', 1, 0),
(73, 48, 447, '499.90', 1, 0),
(74, 51, 448, '1000.00', 1, 0),
(75, 55, 451, '350.00', 1, 0),
(76, 55, 447, '499.90', 1, 0),
(77, 56, 451, '350.00', 1, 0),
(78, 56, 449, '499.50', 1, 0),
(79, 57, 451, '350.00', 1, 0),
(80, 57, 448, '199.90', 1, 0),
(81, 58, 451, '350.00', 1, 0),
(82, 59, 451, '350.00', 1, 0),
(83, 60, 451, '350.00', 1, 0),
(84, 61, 451, '350.00', 1, 0),
(85, 62, 451, '350.00', 1, 0),
(86, 63, 451, '350.00', 1, 0),
(87, 64, 451, '350.00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventas`
--

CREATE TABLE `tblventas` (
  `ID` int(11) NOT NULL,
  `ClaveTransaccion` varchar(250) NOT NULL,
  `PaypalDatos` text NOT NULL,
  `Fecha` datetime NOT NULL,
  `Correo` varchar(5000) NOT NULL,
  `Total` decimal(60,2) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblventas`
--

INSERT INTO `tblventas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `status`) VALUES
(1, '12345678910', '', '2023-06-26 07:56:37', 'angye.ls@gmail.com', '700.00', 'pendiente'),
(2, '12345678910', '', '2023-06-26 07:56:37', 'angye.ls@gmail.com', '700.00', 'Cancelado'),
(3, 'ukpp0uk69i3putaqptum7o5f9l', '', '2023-06-26 01:07:27', 'A@GMAIl.COM', '132.00', 'pendiente'),
(4, 'ukpp0uk69i3putaqptum7o5f9l', '', '2023-06-26 01:08:51', 'A@GMAIl.COM', '131.50', 'pendiente'),
(5, 'ukpp0uk69i3putaqptum7o5f9l', '', '2023-06-26 01:10:43', 'u20238229@utp.edu.pe', '124.50', 'pendiente'),
(6, 'ukpp0uk69i3putaqptum7o5f9l', '', '2023-06-27 00:30:33', 'jshpamzonxx1@outlook.es', '131.50', 'pendiente'),
(7, 'ukpp0uk69i3putaqptum7o5f9l', '', '2023-06-27 00:47:49', 'angye.larryshipper123@gmail.com', '131.50', 'pendiente'),
(8, 'ukpp0uk69i3putaqptum7o5f9l', '', '2023-06-27 00:48:41', 'angye.larryshipper123@gmail.com', '131.50', 'pendiente'),
(9, 'ukpp0uk69i3putaqptum7o5f9l', '', '2023-06-27 09:39:02', 'angye.ls123@gmail.com', '131.50', 'pendiente'),
(10, 'ukpp0uk69i3putaqptum7o5f9l', '', '2023-06-27 09:40:18', 'u20238229@utp.edu.pe', '131.50', 'pendiente'),
(11, 'ukpp0uk69i3putaqptum7o5f9l', '', '2023-06-27 09:44:34', 'u20238229@utp.edu.pe', '131.50', 'pendiente'),
(12, '18f54km0kgfnjs1ulcrl98kqe9', '', '2023-06-27 09:49:43', 'fbarranca159@gmail.com', '131.50', 'pendiente'),
(13, 'ukpp0uk69i3putaqptum7o5f9l', '', '2023-06-27 19:17:05', 'angye.ls123@gmail.com', '350.00', 'Listo para entregar'),
(14, 'ukpp0uk69i3putaqptum7o5f9l', '', '2023-06-27 19:17:59', 'angye.ls123@gmail.com', '600.00', 'Listo para entregar'),
(15, 'ukpp0uk69i3putaqptum7o5f9l', '', '2023-06-28 00:46:33', 'angye.ls123@gmail.com', '849.50', 'Recibido'),
(16, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 12:21:35', 'u20238229@utp.edu.pe', '199.90', 'Pendiente por confirmar'),
(17, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 12:22:24', 'u20238229@utp.edu.pe', '199.90', 'En almacen'),
(18, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 12:22:32', 'u20238229@utp.edu.pe', '199.90', 'Pendiente por confirmar'),
(19, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 12:22:47', 'u20238229@utp.edu.pe', '199.90', 'pendiente'),
(20, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 12:22:49', 'u20238229@utp.edu.pe', '199.90', 'En almacen'),
(21, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 12:24:23', 'angye.ls123@gmail.com', '199.90', 'pendiente'),
(22, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 12:24:58', 'angye.ls123@gmail.com', '199.90', 'Listo para entregar'),
(23, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 12:25:03', 'angye.ls123@gmail.com', '199.90', 'Listo para entregar'),
(24, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 12:25:33', 'angye.ls123@gmail.com', '199.90', 'pendiente'),
(25, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 12:25:45', 'angye.ls123@gmail.com', '199.90', 'pendiente'),
(26, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 12:25:53', 'angye.ls123@gmail.com', '199.90', 'pendiente'),
(27, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 12:40:35', 'angye.ls123@gmail.com', '199.90', 'pendiente'),
(28, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 12:56:45', 'angye.ls123@gmail.com', '599.80', 'pendiente'),
(29, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 13:03:44', 'angye.ls123@gmail.com', '599.80', 'pendiente'),
(30, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 17:39:02', 'angye.ls123@gmail.com', '499.90', 'pendiente'),
(31, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 21:17:08', 'angye.ls123@gmail.com', '849.90', 'pendiente'),
(32, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 21:17:31', 'angye.ls123@gmail.com', '849.90', 'pendiente'),
(33, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-06-28 21:18:11', 'angye.ls123@gmail.com', '849.90', 'pendiente'),
(34, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-10 01:37:22', 'angye.ls123@gmail.com', '449.90', 'Pendiente por confirmar'),
(35, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 03:12:03', 'u20238229@utp.edu.pe', '699.80', 'pendiente'),
(36, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 03:16:11', 'u20238229@utp.edu.pe', '699.80', 'pendiente'),
(37, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 03:16:33', 'u20238229@utp.edu.pe', '699.80', 'pendiente'),
(38, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 03:17:26', 'u20238229@utp.edu.pe', '699.80', 'pendiente'),
(39, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 03:17:42', 'u20238229@utp.edu.pe', '699.80', 'pendiente'),
(40, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 03:17:59', 'u20238229@utp.edu.pe', '699.80', 'pendiente'),
(41, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 03:18:12', 'u20238229@utp.edu.pe', '699.80', 'pendiente'),
(42, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 03:18:26', 'u20238229@utp.edu.pe', '699.80', 'pendiente'),
(43, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 03:18:42', 'u20238229@utp.edu.pe', '699.80', 'pendiente'),
(44, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 03:18:49', 'u20238229@utp.edu.pe', '699.80', 'pendiente'),
(45, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 03:19:25', 'u20238229@utp.edu.pe', '699.80', 'pendiente'),
(46, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 03:20:46', 'u20238229@utp.edu.pe', '699.80', 'pendiente'),
(47, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 03:22:04', 'u20238229@utp.edu.pe', '699.80', 'pendiente'),
(48, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 03:23:04', 'u20238229@utp.edu.pe', '699.80', 'pendiente'),
(49, '1234', '', '2023-07-17 00:37:33', 'angye@gmail.com', '700.00', 'Cancelado'),
(50, '1234', '', '2023-07-17 00:37:33', 'angye@gmail.com', '700.00', 'Cancelado'),
(51, '1234', '', '2023-07-17 00:37:33', 'angye@gmail.com', '700.00', 'Cancelado'),
(52, '1234', '', '2023-07-17 00:37:33', 'angye@gmail.com', '700.00', 'Cancelado'),
(53, '1234', '', '2023-07-17 00:37:33', 'angye@gmail.com', '700.00', 'Cancelado'),
(54, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 17:50:17', 'angye.ls123@gmail.com', '849.90', 'Cancelado'),
(55, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 18:11:05', 'u20238229@utp.edu.pe', '849.90', 'Recibido'),
(56, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 18:12:21', 'u20238229@utp.edu.pe', '849.50', 'Recibido'),
(57, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 18:28:16', 'u20238229@utp.edu.pe', '549.90', 'Recibido'),
(58, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 20:12:16', 'angye.ls123@gmail.com', '350.00', 'Recibido'),
(59, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 20:13:57', 'angye.ls123@gmail.com', '350.00', 'Recibido'),
(60, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 20:14:59', 'angye.ls123@gmail.com', '350.00', 'Recibido'),
(61, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 20:15:33', 'angye.ls123@gmail.com', '350.00', 'Recibido'),
(62, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 20:15:47', 'angye.ls123@gmail.com', '350.00', 'Recibido'),
(63, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 20:15:56', 'angye.ls123@gmail.com', '350.00', 'Recibido'),
(64, 'f0g4ufmsg07kmfjnjrssghukhl', '', '2023-07-16 20:16:04', 'angye.ls123@gmail.com', '350.00', 'Recibido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `id` int(11) NOT NULL,
  `idperfiltrabajador` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `dni` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`id`, `idperfiltrabajador`, `nombre`, `apellido`, `telefono`, `direccion`, `dni`, `correo`, `contraseña`) VALUES
(459, 2, 'Angye ', 'Camargo', '933746803', 'Jr. 28 de diciembre 191', 73012309, 'angye.ls123@gmail.com', 'sistema');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `muebles`
--
ALTER TABLE `muebles`
  ADD PRIMARY KEY (`idprod`);

--
-- Indices de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDVENTA` (`IDVENTA`),
  ADD KEY `idprod` (`idprod`);

--
-- Indices de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `muebles`
--
ALTER TABLE `muebles`
  MODIFY `idprod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD CONSTRAINT `tbldetalleventa_ibfk_1` FOREIGN KEY (`IDVENTA`) REFERENCES `tblventas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbldetalleventa_ibfk_2` FOREIGN KEY (`idprod`) REFERENCES `muebles` (`idprod`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
