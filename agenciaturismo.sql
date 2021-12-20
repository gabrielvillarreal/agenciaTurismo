-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-12-2021 a las 14:37:44
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenciaturismo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_CLIENTE` int(11) NOT NULL,
  `APELLIDO` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `CELULAR` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DIRECCION` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DNI` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `NACIONALIDAD` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_CLIENTE`, `APELLIDO`, `CELULAR`, `DIRECCION`, `DNI`, `EMAIL`, `FECHA_NAC`, `NACIONALIDAD`, `NOMBRE`) VALUES
(11, 'alfonzo', '351342585', 'estanislao cuello 343', '4472408', 'pedro.alfonzo@gmail.com', '1958-10-01', 'argentino', 'pedro'),
(13, 'Ribulgo', '351246597', 'Juan casares 1578', '19758555', 'rosana.ribulgo@gmail.com', '1955-10-08', 'argentina', 'rosana'),
(51, 'mansilla', '1853841446', 'colon 43', '26466803', 'elpedro@gmail.com', '0077-12-31', 'argentino', 'gabriel'),
(166, 'mansilla', '153540857', 'sagrada familia 2322', '19758555', 'juan.mansill@gmail.com', '1977-12-31', 'argentino', 'juan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `ID_EMPLEADO` int(11) NOT NULL,
  `APELLIDO` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `CARGO` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `CELULAR` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DIRECCION` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DNI` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `NACIONALIDAD` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `SUELDO` double DEFAULT NULL,
  `USUARIO_ID_USUARIO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`ID_EMPLEADO`, `APELLIDO`, `CARGO`, `CELULAR`, `DIRECCION`, `DNI`, `EMAIL`, `FECHA_NAC`, `NACIONALIDAD`, `NOMBRE`, `SUELDO`, `USUARIO_ID_USUARIO`) VALUES
(4, 'alvarez', 'encargado', '351342585', 'colon 98', '26466803', 'pedro.alvarez@gmail.com', '0019-12-31', 'argentino', 'pedro', 50000, 3),
(155, 'nievas', 'vendedor', '123123141', 'colon 98', '21467803', 'juan.mur@gmail.com', '0051-12-31', 'argentina', 'juan', 100000, 154),
(159, 'Juarez', 'vendedor', '3541123547', 'el ceibo 452', '25462558', 'gaby.juarez@gmail.com', '1970-01-20', 'argentina', 'Gabriela', 95000, 158);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paqueteturistico`
--

CREATE TABLE `paqueteturistico` (
  `CODIGO_PAQUETE` int(11) NOT NULL,
  `COSTO_PAQUETE` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `paqueteturistico`
--

INSERT INTO `paqueteturistico` (`CODIGO_PAQUETE`, `COSTO_PAQUETE`) VALUES
(8, 49500),
(9, 9000),
(157, 103320),
(169, 130320);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paqueteturistico_servicio`
--

CREATE TABLE `paqueteturistico_servicio` (
  `PaqueteTuristico_CODIGO_PAQUETE` int(11) NOT NULL,
  `listaServicios_CODIGO_SERVICIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `paqueteturistico_servicio`
--

INSERT INTO `paqueteturistico_servicio` (`PaqueteTuristico_CODIGO_PAQUETE`, `listaServicios_CODIGO_SERVICIO`) VALUES
(8, 5),
(8, 7),
(9, 7),
(157, 5),
(157, 6),
(157, 7),
(169, 5),
(169, 6),
(169, 7),
(169, 162),
(169, 164);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence`
--

CREATE TABLE `sequence` (
  `SEQ_NAME` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sequence`
--

INSERT INTO `sequence` (`SEQ_NAME`, `SEQ_COUNT`) VALUES
('SEQ_GEN', '200');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `CODIGO_SERVICIO` int(11) NOT NULL,
  `COSTO_SERVICIO` double DEFAULT NULL,
  `DESCRIPCION_BREVE` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `DESTINO_SERVICIO` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `FECHA_SERVICIO` date DEFAULT NULL,
  `NOMBRE` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`CODIGO_SERVICIO`, `COSTO_SERVICIO`, `DESCRIPCION_BREVE`, `DESTINO_SERVICIO`, `FECHA_SERVICIO`, `NOMBRE`) VALUES
(5, 45000, 'los angeles hotel 5 estrellas', 'cancun', '1943-10-15', 'Hotel por noche/s'),
(6, 59800, 'Toyota corolla para viajar a todas partes', 'Miramar', '0021-12-11', 'Alquiler de auto'),
(7, 10000, 'viaje al exotico mundo de tahilandia', 'Tahilandia', '0022-01-01', 'Pasajes de avion'),
(160, 15000, 'Viaje al valle de la luna', 'Valle Fertil', '2022-01-10', 'Excursiones'),
(161, 20000, 'viaje al tren de las nubes con todo incluido', 'san martin de los cobres', '2022-02-21', 'Pasajes de tren'),
(162, 6000, 'Ansenuza Hotel spa', 'Miramar', '2021-03-03', 'Hotel por noche/s'),
(163, 10000, 'Cosquin rock', 'santa maria de punilla', '2022-02-02', 'Entradas a Eventos'),
(164, 24000, 'viaje a las Cataratas del Iguazu', 'Misiones', '2022-01-09', 'Pasajes de colectivo'),
(165, 45000, 'hotel howard jhonson', 'Miami', '2022-12-05', 'Hotel por noche/s'),
(172, 45000, 'una hermosa experiencia al mar de argentina', 'las grutas', '1977-12-31', 'Pasajes de avión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_paqueteturistico`
--

CREATE TABLE `servicio_paqueteturistico` (
  `Servicio_CODIGO_SERVICIO` int(11) NOT NULL,
  `listaPaquete_CODIGO_PAQUETE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicio_paqueteturistico`
--

INSERT INTO `servicio_paqueteturistico` (`Servicio_CODIGO_SERVICIO`, `listaPaquete_CODIGO_PAQUETE`) VALUES
(5, 8),
(5, 157),
(5, 169),
(6, 157),
(6, 169),
(7, 8),
(7, 9),
(7, 157),
(7, 169),
(162, 169),
(164, 169);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `USUARIO` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `PASSWORD`, `USUARIO`) VALUES
(3, 'aaa', 'aaa'),
(154, '456', 'juanpedro'),
(158, '123', 'gaby');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `NUM_VENTA` int(11) NOT NULL,
  `MEDIOPAGO` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `FECHA_VENTA` date DEFAULT NULL,
  `CLIENTE_ID_CLIENTE` int(11) DEFAULT NULL,
  `EMPLEADO_ID_EMPLEADO` int(11) DEFAULT NULL,
  `PAQUETETURISTICO_CODIGO_PAQUETE` int(11) DEFAULT NULL,
  `SERVICIO_CODIGO_SERVICIO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`NUM_VENTA`, `MEDIOPAGO`, `FECHA_VENTA`, `CLIENTE_ID_CLIENTE`, `EMPLEADO_ID_EMPLEADO`, `PAQUETETURISTICO_CODIGO_PAQUETE`, `SERVICIO_CODIGO_SERVICIO`) VALUES
(12, 'efectivo', '2021-12-31', 11, 4, NULL, 5),
(52, 'tarjetaDebito', '0021-02-20', 11, 4, NULL, 163),
(151, 'tarjetaDebito', '0021-12-31', 13, 159, 9, NULL),
(152, 'efectivo', '2021-12-16', 11, 4, NULL, 6),
(153, 'monederoVirtual', '0021-02-19', 166, 155, 8, NULL),
(168, 'tarjetaCredito', '0021-12-16', 13, 159, 157, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`ID_EMPLEADO`),
  ADD KEY `FK_EMPLEADO_USUARIO_ID_USUARIO` (`USUARIO_ID_USUARIO`);

--
-- Indices de la tabla `paqueteturistico`
--
ALTER TABLE `paqueteturistico`
  ADD PRIMARY KEY (`CODIGO_PAQUETE`);

--
-- Indices de la tabla `paqueteturistico_servicio`
--
ALTER TABLE `paqueteturistico_servicio`
  ADD PRIMARY KEY (`PaqueteTuristico_CODIGO_PAQUETE`,`listaServicios_CODIGO_SERVICIO`),
  ADD KEY `PQUETETURISTICOSERVICIOlstaServiciosCODIGOSERVICIO` (`listaServicios_CODIGO_SERVICIO`);

--
-- Indices de la tabla `sequence`
--
ALTER TABLE `sequence`
  ADD PRIMARY KEY (`SEQ_NAME`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`CODIGO_SERVICIO`);

--
-- Indices de la tabla `servicio_paqueteturistico`
--
ALTER TABLE `servicio_paqueteturistico`
  ADD PRIMARY KEY (`Servicio_CODIGO_SERVICIO`,`listaPaquete_CODIGO_PAQUETE`),
  ADD KEY `SERVICIOPAQUETETURISTICOlistaPaqueteCODIGO_PAQUETE` (`listaPaquete_CODIGO_PAQUETE`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUARIO`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`NUM_VENTA`),
  ADD KEY `FK_VENTA_EMPLEADO_ID_EMPLEADO` (`EMPLEADO_ID_EMPLEADO`),
  ADD KEY `FK_VENTA_SERVICIO_CODIGO_SERVICIO` (`SERVICIO_CODIGO_SERVICIO`),
  ADD KEY `FK_VENTA_PAQUETETURISTICO_CODIGO_PAQUETE` (`PAQUETETURISTICO_CODIGO_PAQUETE`),
  ADD KEY `FK_VENTA_CLIENTE_ID_CLIENTE` (`CLIENTE_ID_CLIENTE`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `FK_EMPLEADO_USUARIO_ID_USUARIO` FOREIGN KEY (`USUARIO_ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`);

--
-- Filtros para la tabla `paqueteturistico_servicio`
--
ALTER TABLE `paqueteturistico_servicio`
  ADD CONSTRAINT `PQETETURISTICOSERVICIOPqueteTuristicoCODIGOPAQUETE` FOREIGN KEY (`PaqueteTuristico_CODIGO_PAQUETE`) REFERENCES `paqueteturistico` (`CODIGO_PAQUETE`),
  ADD CONSTRAINT `PQUETETURISTICOSERVICIOlstaServiciosCODIGOSERVICIO` FOREIGN KEY (`listaServicios_CODIGO_SERVICIO`) REFERENCES `servicio` (`CODIGO_SERVICIO`);

--
-- Filtros para la tabla `servicio_paqueteturistico`
--
ALTER TABLE `servicio_paqueteturistico`
  ADD CONSTRAINT `SERVICIOPAQUETETURISTICOlistaPaqueteCODIGO_PAQUETE` FOREIGN KEY (`listaPaquete_CODIGO_PAQUETE`) REFERENCES `paqueteturistico` (`CODIGO_PAQUETE`),
  ADD CONSTRAINT `SERVICIO_PAQUETETURISTICO_Servicio_CODIGO_SERVICIO` FOREIGN KEY (`Servicio_CODIGO_SERVICIO`) REFERENCES `servicio` (`CODIGO_SERVICIO`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `FK_VENTA_CLIENTE_ID_CLIENTE` FOREIGN KEY (`CLIENTE_ID_CLIENTE`) REFERENCES `cliente` (`ID_CLIENTE`),
  ADD CONSTRAINT `FK_VENTA_EMPLEADO_ID_EMPLEADO` FOREIGN KEY (`EMPLEADO_ID_EMPLEADO`) REFERENCES `empleado` (`ID_EMPLEADO`),
  ADD CONSTRAINT `FK_VENTA_PAQUETETURISTICO_CODIGO_PAQUETE` FOREIGN KEY (`PAQUETETURISTICO_CODIGO_PAQUETE`) REFERENCES `paqueteturistico` (`CODIGO_PAQUETE`),
  ADD CONSTRAINT `FK_VENTA_SERVICIO_CODIGO_SERVICIO` FOREIGN KEY (`SERVICIO_CODIGO_SERVICIO`) REFERENCES `servicio` (`CODIGO_SERVICIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
