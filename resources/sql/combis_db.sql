-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-05-2019 a las 17:43:55
-- Versión del servidor: 10.3.15-MariaDB-1:10.3.15+maria~bionic
-- Versión de PHP: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `combis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codpos` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `name`, `codpos`) VALUES
(1, 'Avellaneda', '1870'),
(2, 'Dock Sud', '1871'),
(3, 'Gerli', '1870'),
(4, 'Piñeyro', '1870'),
(5, 'Sarandí', '1872'),
(6, 'Villa Domínico', '1874'),
(7, 'Wilde', '1875'),
(8, 'Quinta Galli', '1870'),
(9, 'El Jagüel', '1842'),
(10, 'Luis Guillón', '1838'),
(11, 'Canning', '1804'),
(12, 'Monte Grande', '1842'),
(13, '9 de Abril', '1776'),
(14, 'Lanús', '1824'),
(16, 'Valentín Alsina', '1822'),
(17, 'Remedios de Escalada', '1826'),
(18, 'Monte Chingolo', '1825'),
(19, 'Villa Caraza', '1824'),
(20, 'Banfield', '1828'),
(21, 'Ingeniero Budge', '1773'),
(22, 'Llavallol', '1836'),
(23, 'Lomas de Zamora ', '1832'),
(24, 'Temperley', '1834'),
(25, 'Turdera', '1833'),
(26, 'Villa Fiorito', '1832'),
(27, 'Villa Centenario', '2700'),
(28, 'Villa Albertina', '1628'),
(29, 'San José', '1498'),
(30, 'Adrogué', '1846'),
(31, 'José Mármol', '1846'),
(32, 'Burzaco', '1852'),
(33, 'Longchamps', '1854'),
(34, 'Glew', '1856'),
(35, 'Claypole', '1849'),
(37, 'Malvinas Argentinas', '1846'),
(38, 'Ministro Rivadavia', '1852'),
(39, 'Rafael Calzada', '1847'),
(40, 'Ezeiza', '1804'),
(41, 'Cañuelas', '1814'),
(42, 'San Bernardo', '7111'),
(43, 'Mar de Ajó', '7109'),
(44, 'La Lucila del Mar', '7113'),
(45, 'Aguas Verdes', '7112'),
(46, 'Nueva Atlantis', '7113'),
(47, 'Mar del Tuyú', '7108'),
(48, 'Santa Teresita', '7107'),
(49, 'Costa del Este', '7108'),
(50, 'Villa Gesell', '7165'),
(51, 'Las Toninas', '7106'),
(52, 'San Clemente del Tuyú', '7105'),
(53, 'Pinamar', '7167'),
(54, 'Cap. Fed.', ''),
(55, 'Costa Azul', '7112'),
(56, 'Quilmes', '1878'),
(57, 'San Vicente', '1865'),
(58, 'Tristán Suárez', '1806'),
(59, 'Bernal', '1876'),
(60, 'Alejandro Korn', '1864'),
(61, 'Florencio Varela', '1888'),
(62, 'San Justo', '1754'),
(63, 'Haedo', '1706'),
(64, 'Ranelagh', '1886'),
(65, 'Mar del Plata', '7600'),
(66, 'México', ''),
(67, 'España', ''),
(68, 'Córdoba', ''),
(69, 'Santa Fé', ''),
(70, 'Entre Ríos', ''),
(71, 'Mendoza', 'M5500'),
(72, 'San Luis', ''),
(73, 'San Juan', ''),
(74, 'Valeria del Mar', '7167'),
(75, 'Brandsen', '1980'),
(76, 'Colegiales', 'C1427CCY'),
(77, 'Villa Madero', '1768'),
(78, 'Belgrano', 'C1426BLI'),
(79, 'Puerto Madero', 'C1107AAX'),
(80, 'Villa General Belgrano', 'X5194'),
(81, 'San Isidro', 'B1642'),
(82, 'Ramos Mejía', 'B1704'),
(83, 'Ciudadela', 'B1702'),
(84, 'Boedo', 'C1240AEL'),
(85, 'Balvanera', 'C1046AAQ'),
(86, 'San Telmo', 'C1065AAP'),
(88, 'Vicente Lopez', '1638'),
(89, 'ROSARIO', '8500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinations`
--

CREATE TABLE `destinations` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_sales` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_destinations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `cnrt_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnrt_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnrt_hour_start` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnrt_duration` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `destinations`
--

INSERT INTO `destinations` (`id`, `type_id`, `name`, `name_sales`, `return_destinations`, `cnrt_name`, `cnrt_code`, `cnrt_hour_start`, `cnrt_duration`) VALUES
(1, 1, 'Zona Sur', 'Zona Sur', NULL, 'BUENOS AIRES', 'AR-C', NULL, NULL),
(2, 1, 'Costa Chica', 'Costa Chica', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(3, 1, 'Costa Grande', 'Costa Grande', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(4, 1, 'Mar del Plata', 'Mar del Plata', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(6, 1, 'Temaiken/Tigre', 'Temaiken/Tigre', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(8, 1, 'Recitales', 'Recitales', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(9, 1, 'OKTOBERFEST 2013', 'OKTOBERFEST 2013', NULL, 'CORDOBA', 'AR-X', NULL, NULL),
(11, 1, 'LUJAN Excursion en el dia ', 'LUJAN Excursion en el dia ', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(12, 2, 'COSTA CHICA', 'COSTA CHICA', '13', 'COSTA', 'AR-B', NULL, NULL),
(13, 2, 'Zona Sur', 'BUENOS AIRES', '12,18,17', 'BUENOS AIRES', 'AR-C', NULL, NULL),
(17, 2, 'MAR DEL PLATA', 'MAR DEL PLATA', '13', 'COSTA', 'AR-B', NULL, NULL),
(18, 2, 'COSTA GRANDE', 'COSTA GRANDE', '13', 'COSTA', 'AR-B', NULL, NULL),
(22, 3, 'Zona Sur', 'Zona Sur', NULL, 'BUENOS AIRES', 'AR-C', NULL, NULL),
(23, 3, 'Carnaval de Gualeguaychu', 'Carnaval de Gualeguaychu', NULL, 'ENTRE RIOS', 'AR-E', NULL, NULL),
(24, 1, 'Excursiones por un día', 'Excursiones por un día', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(25, 1, 'SAN PEDRO  Excursion en el dia ', 'SAN PEDRO  Excursion en el dia ', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(29, 4, 'Concepcion del Uruguay', 'CONCEPCION DEL URUGUAY.', NULL, 'ENTRE RIOS', 'AR-E', NULL, NULL),
(31, 1, 'TERMAS MARINAS Excursion en el Dia.', 'TERMAS MARINAS Excursion en el Dia.', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(32, 4, 'Oktoberfest 2017', 'Oktoberfest 2016', NULL, 'CORDOBA', 'AR-X', NULL, NULL),
(33, 1, 'Capital Federal', 'Capital Federal', NULL, 'BUENOS AIRES', 'AR-C', NULL, NULL),
(34, 4, 'Zona Sur', 'Zona Sur', NULL, 'BUENOS AIRES', 'AR-C', NULL, NULL),
(35, 4, 'Puerto Madryn', 'Puerto Madryn', NULL, 'CHUBUT', 'AR-U', NULL, NULL),
(36, 4, 'CONCEPCION - Entre Rios', 'CONCEPCION - Entre Rios', NULL, 'ENTRE RIOS', 'AR-E', NULL, NULL),
(37, 5, 'Zona Sur', 'Zona Sur', NULL, 'BUENOS AIRES', 'AR-C', NULL, NULL),
(38, 5, 'Excursiones', 'Excursiones', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(40, 3, 'CARNAVAL ', 'CARNAVAL en C.Uruguay', NULL, 'ENTRE RIOS', 'AR-E', NULL, NULL),
(41, 1, 'DIA TERMAL Excursion en el dia ', 'DIA TERMAL Excursion en el dia ', NULL, 'ENTRE RIOS', 'AR-E', NULL, NULL),
(42, 5, 'SAN PEDRO 1', 'SAN PEDRO 1', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(43, 1, 'TANDIL', 'TANDIL', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(46, 4, 'OKTOBERFEST 2017 Solo Traslado ', 'OKTOBERFEST 2016 Solo Traslado ', NULL, 'CORDOBA', 'AR-X', NULL, NULL),
(50, 4, 'MAR DEL PLATA', 'MAR DEL PLATA', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(53, 1, 'ESTANCIAS Excursiones en el dia ', 'ESTANCIAS Excursiones en el dia ', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(54, 1, 'ROSARIO Excursion en el Dia ', 'ROSARIO Excursion en el Dia ', NULL, 'SANTA FE', 'AR-S', NULL, NULL),
(58, 5, 'Capital Federal', 'Capital Federal', NULL, 'BUENOS AIRES', 'AR-C', NULL, NULL),
(59, 5, 'Zona Sur 2', 'Zona Sur 2', NULL, 'BUENOS AIRES', 'AR-C', NULL, NULL),
(64, 1, 'MUNDO MARINO Excursion en el Dia.', 'MUNDO MARINO Excursion en el Dia.', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(65, 1, 'Zona Sur Colprim', 'Zona Sur Colprim', NULL, 'BUENOS AIRES', 'AR-C', NULL, NULL),
(66, 1, 'REPUBLICA DE LOS NIÑOS Excursion en el Dia', 'EUCA', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(67, 1, 'GRANJA CHOCOLATADA', 'GRANJA CHOCOLATADA', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(68, 1, 'Zona Oeste', 'Zona Oeste', NULL, 'BUENOS AIRES', 'AR-C', NULL, NULL),
(71, 3, 'Carnaval de Gualeguaychu', 'Carnaval de Gualeguaychu', NULL, 'ENTRE RIOS', 'AR-E', NULL, NULL),
(75, 4, 'Urdinarrain ', 'Concepcion y Gualeguaychu', NULL, 'ENTRE RIOS', 'AR-E', NULL, NULL),
(76, 4, 'Basavilbaso y Guaychu', 'Basavilbaso y Guaychu', NULL, 'ENTRE RIOS', 'AR-E', NULL, NULL),
(77, 4, 'Palmar con Palacio San Jose', 'Palmar con Palacio San Jose', NULL, 'ENTRE RIOS', 'AR-E', NULL, NULL),
(78, 4, 'San Pedro', 'San Pedro', NULL, 'BUENOS AIRES', 'AR-B', NULL, NULL),
(79, 4, 'Rosario', 'Rosario', NULL, 'SANTA FE', 'AR-S', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `full_name` varchar(428) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `full_name`) VALUES
(1, 'diegoplenco', 'diegoplenco', 'cloud@plen.co', 'cloud@plen.co', 1, NULL, '$2y$13$LSNN04KLpy8CiVETZXpXyOZfIxqrrU/XpGBO3mPCJScLw2beskrmy', '2019-05-26 18:08:53', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', 'Diego Plenco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190509163731', '2019-05-09 16:37:46'),
('20190513130801', '2019-05-13 13:08:15'),
('20190526050555', '2019-05-26 05:06:32'),
('20190526050858', '2019-05-26 05:09:04'),
('20190526064317', '2019-05-26 06:43:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `passengers_capacity` int(11) NOT NULL,
  `time_and_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aditional_services` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_observations` varchar(3500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_fee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_fixed_fee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoryid_id` int(11) NOT NULL,
  `origin_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `service_sub_account_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `passengers_capacity`, `time_and_date`, `aditional_services`, `additional_observations`, `fixed_fee`, `card_fixed_fee`, `categoryid_id`, `origin_id`, `destination_id`, `service_sub_account_type_id`) VALUES
(1, 5, '12', 'dsaf', 'sdaf', '12', '12', 2, 32, 8, 2),
(2, 22, '12', 'dafs', 'sdf', '11', '11', 4, 1, 33, 4),
(3, 11, '12', '1', '1', '22', '22', 4, 17, 13, 1),
(4, 44, '12', NULL, NULL, '11', '22', 3, 4, 4, 3),
(5, 43, 'Martes 3 de Junio 16:00 horas', 'AE', 'AE', '65', '44', 1, 4, 9, 5),
(6, 22, 'Lunes 27 de Mayo 10:00 AM', 'Ninguno', 'Ninguno', '75', '80', 4, 29, 78, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stops`
--

CREATE TABLE `stops` (
  `id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` smallint(6) NOT NULL,
  `time_trip` double DEFAULT NULL,
  `price` double NOT NULL,
  `price_card` double DEFAULT NULL,
  `fixed_point` smallint(6) NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy_online` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `stops`
--

INSERT INTO `stops` (`id`, `destination_id`, `name`, `keyname`, `address`, `position`, `time_trip`, `price`, `price_card`, `fixed_point`, `lat`, `lng`, `buy_online`) VALUES
(2, 1, 'LOMAS DE ZAMORA', 'LOM', 'HIPOLITO YRIGOYEN Y BOEDO (KIOSKO 24 HS)', 20, 20, 0, NULL, 0, NULL, NULL, 1),
(3, 1, 'LANUS', 'LAN', 'Hipolito Yrigoyen y 25 de mayo (BCO FRANCES)', 45, 45, 0, NULL, 0, NULL, NULL, 1),
(4, 1, 'CAPITAL FEDERAL', 'CFD', 'Pte. Roque Saenz Peña (diagonal norte) y Cerrito  (OCA)', 60, 60, 0, NULL, 0, NULL, NULL, 1),
(5, 4, 'MAR DEL PLATA', 'MDQ', 'COLON Y ARENALES (PZA. COLON)', 0, 0, 130, 170, 0, NULL, NULL, 1),
(6, 3, 'VILLA GESELL', 'VIG', 'ACA 3 Y 112', 90, 90, 120, 160, 0, NULL, NULL, 1),
(7, 3, 'PINAMAR', 'PIN', 'ROTONDA BUNGE Y AV LIBERTADOR', 120, 120, 120, 160, 0, NULL, NULL, 1),
(8, 2, 'MAR DE AJO', 'MDA', 'COSTANERA Y AV LIBERTADOR', 0, 0, 120, 160, 0, NULL, NULL, 1),
(9, 2, 'SAN BERNARDO', 'SAB', 'CHIOZZA Y AV SAN BERNARDO', 15, 15, 120, 160, 0, NULL, NULL, 1),
(10, 2, 'LA LUCILA DEL MAR', 'LAL', '', 25, 25, 120, 160, 0, NULL, NULL, 1),
(11, 2, 'COSTA DEL ESTE', 'CDE', '', 40, 40, 120, 160, 0, NULL, NULL, 1),
(12, 2, 'SANTA TERESITA ', 'STA', 'COSTANERA Y 32', 45, 45, 120, 160, 0, NULL, NULL, 1),
(13, 2, 'SAN CLEMENTE', 'SCT', 'COSTANERA Y AV SAN MARTIN', 75, 75, 120, 160, 0, NULL, NULL, 1),
(27, 2, 'MAR DEL TUYU', 'MDT', 'COSTANERA Y 62', 30, 30, 120, 160, 0, NULL, NULL, 1),
(28, 2, 'LAS TONINAS', 'LTN', '1  Y 42', 60, 60, 120, 160, 0, NULL, NULL, 1),
(29, 4, 'VILLA GESELL', 'VIG', 'ACA 3 Y 112', 90, 90, 120, 160, 0, NULL, NULL, 1),
(30, 3, 'CARILO', 'CLO', 'ENTRADA DE CARILO RUT 11', 105, 105, 120, 160, 0, NULL, NULL, 1),
(31, 4, 'SANTA CLARA ', 'STC', 'ENTRADA SANTA CLARA', 20, 20, 120, 160, 0, NULL, NULL, 1),
(32, 4, 'PINAMAR', 'PIN', 'ROTONDA BUNGE Y AV LIBERTADOR', 120, 120, 120, 160, 0, NULL, NULL, 1),
(33, 4, 'CARILO', 'CLO', 'ENTRADA DE CARILO RUT 11', 105, 105, 120, 160, 0, NULL, NULL, 1),
(34, 4, 'MAR DE AJO', 'MDA', 'COSTANERA Y AV LIBERTADOR ', 150, 150, 120, 160, 0, NULL, NULL, 1),
(35, 4, 'SAN BERNARDO', 'SAB', 'CHIOSA Y AV SAN BERNARDO', 165, 165, 120, 160, 0, NULL, NULL, 1),
(36, 4, 'MAR DEL TUYU', 'MDT', 'COSTANERA Y 62', 180, 180, 120, 160, 0, NULL, NULL, 1),
(37, 4, 'SANTA TERESITA', 'STA', 'COSTANERA Y 32', 195, 195, 120, 160, 0, NULL, NULL, 1),
(38, 4, 'LAS TONINAS', 'LTN', '1 Y 42', 210, 210, 120, 160, 0, NULL, NULL, 1),
(39, 4, 'SAN CLEMENTE', 'SCT', 'COSTANETA Y AV SAN MARTIN', 225, 225, 120, 160, 0, NULL, NULL, 1),
(40, 3, 'MAR DEL PLATA ', 'MDQ', 'COLON Y ARENALES (PLAZA COLON)', 0, 0, 120, 160, 0, NULL, NULL, 1),
(41, 3, 'SANTA CLARA ', 'STC', 'ENTRADA DE SANTA CLARA', 20, 20, 120, 160, 0, NULL, NULL, 1),
(47, 1, 'Agencia - ADROGUE -', 'AGE', 'Canale 921, Esquina Roca', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(50, 1, 'Bco FRANCES 25 de Mayo y Av. Yrigoyen -TEMPERLEY -', 'TEM', '25 de Mayo y Avenida Yrigoyen', 10, 10, 0, 0, 0, NULL, NULL, 1),
(54, 1, 'ALCOYANA Boedo y Av. Yrigoyen -LOMAS DE ZAMORA -', 'LOM', 'Boedo y Avenida Yrigoyen', 20, 20, 0, 0, 0, NULL, NULL, 1),
(61, 1, 'SHELL French y Avenida Yrigoyen - BANFIELD -', 'BAN', 'French y Avenida Yrigoyen', 25, 25, 0, NULL, 0, NULL, NULL, 1),
(64, 1, 'Bco FRANCES 25 de Mayo y Av. Yrigoyen - LANÚS -', 'LAN', '25 de Mayo y Avenida Yrigoyen', 35, 35, 0, 0, 0, NULL, NULL, 1),
(67, 1, 'PT9 - TERMINAL SUBTERRANEA', 'CAP', '9 de Julio y Sarmiento - DARSENAS 17/18/19/20', 60, 60, 0, NULL, 0, NULL, NULL, 1),
(70, 6, 'Temaiken (SÓLO TRASLADO)', 'TMK', 'Puerta Temaiken - ESCOBAR -', 0, 0, 469, 583, 0, NULL, NULL, 1),
(71, 6, 'Parque de la costa (SÓLO TRASLADO)', 'TIG', 'Puerta del Parque de la costa - TIGRE -', 30, 30, 469, 569, 0, NULL, NULL, 1),
(72, 6, 'Puerto de Frutos (SÓLO TRASLADO)', 'TIG', 'Puerto de Frutos - TIGRE -', 40, 40, 469, 583, 0, NULL, NULL, 1),
(73, 6, 'Temaiken (Ent. MAYOR + Traslado)', 'TMK', 'Puerta Temaiken - ESCOBAR -', 0, 0, 925, 1150, 0, NULL, NULL, 1),
(74, 6, 'Parque de la costa (PASAPORTE ORO + Traslado)', 'TIG', 'Puerta del Parque de la costa - TIGRE -', 30, 30, 575, 720, 0, NULL, NULL, 1),
(75, 8, 'River - Bon Jovi', 'RIV', 'Crisologo Larralde y Libertador (Sport Club)', 0, 0, 40, 80, 0, NULL, NULL, 1),
(76, 8, 'Geba - LUIS MIGUEL -', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 65, 105, 0, NULL, NULL, 1),
(77, 8, 'CAMILA CABELLO - Directv Arena', 'ARE', 'Olivos 3215, Panamericana km 35,5 - Tortuguitas', 0, 0, 440, 540, 0, NULL, NULL, 1),
(78, 6, 'Temaiken (Ent. MENOR + Traslado)', 'TMK', 'Puerta Temaiken - ESCOBAR -', 0, 0, 895, 1112, 0, NULL, NULL, 1),
(79, 8, 'INDIO SOLARI - Olavarria', 'OLA', 'El predio rural La Colmena.', 0, 0, 1050, 1200, 0, NULL, NULL, 1),
(80, 8, 'BON JOVI - Velez Sarfield ', 'VEL', 'JUAN B. JUSTO Y GRAL PAZ - YPF -', 0, 0, 300, 370, 0, NULL, NULL, 1),
(81, 9, 'FIESTA DE LA CERVEZA', 'OKT', 'PETROBRAS (Entrada Villa Gral Belgrano)', 0, 0, 320, 360, 0, NULL, NULL, 1),
(82, 9, 'REGRESO OKTOBERFEST', 'ROK', 'PETROBRAS ENTRADA VILLA GRAL BELGRANO', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(85, 1, 'PLANETARIO frente a CARREFOUR - AVELLANEDA -', 'AVE', 'Avenida Hipolito Yrigoyen 300', 50, 50, 0, NULL, 0, NULL, NULL, 1),
(86, 6, 'Fiesta de la Flor (SOLO TRASLADO)', 'FIE', 'Mateo Gelves 1051 - ESCOBAR.', 0, 0, 469, 569, 0, NULL, NULL, 1),
(87, 8, 'ED SHEERAN - Estadio Unico de La Plata', 'PLA', 'Av.25 y 37 - PLAZA ALBERTI -', 0, 0, 320, 390, 0, NULL, NULL, 1),
(89, 6, 'Estancia Don Silvano', 'DON', 'Ruta 8 Km 87.3 Capilla del Señor', 0, 0, 445, 540, 0, NULL, NULL, 1),
(90, 1, 'Puente Saavedra Av. Cabildo 4970 ', 'PTE', 'Avenida Cabildo 4970.', 80, 80, 0, 0, 0, NULL, NULL, 1),
(91, 1, 'BINGO Ciudadela, Avenida Gral Paz 51 - CIUDADELA -', 'CIU', 'Avenida Gral Paz 51', 75, 75, 0, 0, 0, NULL, NULL, 1),
(92, 11, 'LUJAN - Chacra El Rancho ', 'LUJ', 'Ruta 192 8.5 - Open Door, Buenos Aires', 0, 0, 625, 775, 0, NULL, NULL, 1),
(93, 11, 'LUJAN - Chacra El Rancho (Menor de 4 a 10 años)', 'LUJ', 'Ruta 192 8.5 - Open Door, Buenos Aires', 0, 0, 490, 610, 0, NULL, NULL, 1),
(94, 1, 'Banco Frances - PANAMERICANA Y MARQUEZ -', 'PAN', 'Banco Frances - Panamerica y Marquez', 90, 90, 0, 0, 0, NULL, NULL, 1),
(96, 12, 'SAN BERNARDO', 'SBT', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(97, 12, 'MAR DE AJO', 'MDA', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(98, 13, 'ADROGUE', 'ADR', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(99, 13, 'LOMAS DE ZAMORA', 'LOM', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(100, 13, 'LANUS', 'LAN', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(101, 12, 'MAR DEL TUYU', 'MDT', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(102, 12, 'SAN CLEMENTE', 'SCT', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(103, 12, 'LAS TONINAS', 'LTN', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(104, 12, 'SANTA TERESITA', 'STA', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(105, 12, 'COSTA DEL ESTE', 'CDE', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(106, 12, 'AGUAS VERDES', 'AGV', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(107, 12, 'LA LUCILA DEL MAR', 'LLM', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(116, 13, 'BANFIELD', 'BAN', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(117, 13, 'MONTE GRANDE ', 'MTG', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(118, 13, 'AVELLANEDA', 'AVL', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(119, 13, 'REMEDIOS DE ESCALADA', 'RDE', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(120, 13, 'Av. Cabildo Esq Colectora Gral Paz Encomienda 5000', 'CPF', 'Avenida Cabildo 5000', 0, 0, 0, 0, 1, '-34.53953889160662', '-58.475565612316075', 0),
(121, 13, 'LONGCHAMPS', 'LGH', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(122, 13, 'GLEW', 'GLW', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(123, 13, 'VALENTIN ALSINA', 'VLA', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(124, 13, 'RAFAEL CALZADA', 'RFC', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(125, 13, 'SOLANO', 'SFS', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(126, 13, 'PIÑEIRO', 'PÑO', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(127, 13, 'GERLY', 'GLY', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(128, 13, 'SAN JOSE', 'SJE', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(145, 12, 'COSTA AZUL', 'CAZ', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(149, 12, 'NUEVA ATLANTIS', 'NAT', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(150, 11, 'LUJAN - Chacra El Rancho (Menor de 0 a 3 años)', 'MEN', 'Ruta 192 8.5 - Open Door, Buenos Aires', 0, 0, 259, 325, 0, NULL, NULL, 1),
(151, 18, 'PINAMAR', 'PIN', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(152, 18, 'OSTENDE', 'OST', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(153, 18, 'CARILO', 'CAR', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(154, 18, 'VALERIA DEL MAR', 'VAL', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(155, 18, 'VILLA GESELL', 'VLG', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(156, 18, 'MAR DE LAS PAMPAS', 'MDP', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(157, 18, 'MAR AZUL', 'MAZ', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(158, 17, 'MAR DEL PLATA', 'MDQ', '', 0, 0, 1150, 1250, 0, NULL, NULL, 1),
(159, 17, 'SANTA CLARA DEL MAR', 'SCM', '', 0, 0, 1150, 1250, 0, NULL, NULL, 1),
(161, 13, 'LLAVALLOL', 'LLA', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(162, 13, 'BURZACO ', 'BUR', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(163, 13, 'TURDERA', 'TUR', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(164, 13, 'ALEJANDRO KORN', 'AKN', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(165, 13, 'JOSE MARMOL', 'JSM', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(166, 13, 'Ciudad de Buenos Aires | Capital Federal', 'CAB', '', 0, 0, 0, 0, 0, NULL, NULL, 1),
(167, 13, 'TEMPERLEY', 'TEM', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(168, 13, 'LUIS GUILLON', 'LGL', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(172, 13, 'CLAYPOLE', 'CLA', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(180, 17, 'MAR DE COBO ', 'MDC', '', 0, 0, 1150, 1250, 0, NULL, NULL, 1),
(181, 17, 'ZZZ', 'ZZZ', '', 0, 0, 0, NULL, 0, NULL, NULL, 0),
(187, 17, 'MAR CHIQUITA', 'MCH', '', 0, 0, 1150, 1250, 0, NULL, NULL, 1),
(216, 23, 'Entrada a Playa', 'PLA', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(217, 23, 'Entrada a Termas', 'TER', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(218, 13, 'PRESIDENTE PERON', 'GUE', '', 0, 0, 0, 0, 0, NULL, NULL, 1),
(219, 22, 'ADROGUE', 'ADR', 'Canale 921 - ADROGUE BUS', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(220, 22, 'TEMPERLEY', 'TMP', 'Av. Yrigoyen esq. 25 de Mayo - BANCO FRANCES', 15, 15, 0, NULL, 0, NULL, NULL, 1),
(221, 22, 'TEMPERLEY PASCO', 'TMA', 'Av. Pasco esq. Av. Alte. Brown - SHELL', 10, 10, 0, NULL, 0, NULL, NULL, 1),
(222, 22, 'QUILMES', 'QUI', 'Av. Calchaqui esq. 12 de Octubre - SHELL', 0, 0, 0, 0, 0, NULL, NULL, 1),
(223, 22, 'LOMAS DE ZAMORA', 'LMZ', 'Av. Yrigoyen esq. Boedo - ALCOYANA', 20, 20, 0, 0, 0, NULL, NULL, 1),
(224, 22, 'BANFIELD', 'BFD', 'Av. Yrigoyen esq. French - EST. DE SERVICIO SHELL', 25, 25, 0, NULL, 0, NULL, NULL, 1),
(225, 22, 'LANUS', 'LAN', 'Av Yrigoyen esq. 25 de Mayo - BANCO FRANCÉS', 35, 35, 0, NULL, 0, NULL, NULL, 1),
(226, 22, 'AVELLANEDA', 'AVE', 'Yrigoyen al 300 PLANETARIO - FRENTE AL CARREFOUR', 50, 50, 0, NULL, 0, NULL, NULL, 1),
(227, 22, 'CENTRO', 'CAP', 'Cerrito esq. Diagonal Norte - CORREO OCA ', 60, 60, 0, NULL, 0, NULL, NULL, 1),
(228, 22, 'CIUDADELA', 'CIU', 'Av. Gral. Paz 51 - BINGO CIUDADELA', 75, 75, 0, 0, 0, NULL, NULL, 1),
(229, 22, 'PUENTE SAAVEDRA', 'PSA', 'Avenida Cabildo 4970.', 80, 80, 0, 0, 0, NULL, NULL, 1),
(230, 22, 'PANAMERICANA Y MARQUEZ', 'PMQ', 'Panamericana y Marquez - BANCO FRANCES', 90, 90, 0, 0, 0, NULL, NULL, 1),
(231, 22, 'MONTE GRANDE', 'MGD', 'Las Heras y Bvard. Buenos Aires - PETROBRAS', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(232, 22, 'REMEDIOS DE ESCALADA', 'RES', 'AV. Hipolito Yrigoyen y Beltran - COTO', 30, 30, 0, NULL, 0, NULL, NULL, 1),
(233, 22, 'TURDERA', 'TUR', 'Hip. Yrigoyen y Antártida Argentina ESSO', 10, 10, 0, NULL, 0, NULL, NULL, 1),
(234, 8, '', '', '', 0, 0, 0, 0, 0, NULL, NULL, 0),
(235, 8, '- CHAYANNE - Estadio Velez Sarfield', 'VEL', 'Juan B. Justo Y Gral Paz - YPF -', 0, 0, 150, 190, 0, NULL, NULL, 1),
(236, 8, 'INDIO SOLARI', 'IND', 'Autodromo de JUNIN', 0, 0, 150, 190, 0, NULL, NULL, 1),
(238, 24, 'SAN PEDRO  ', 'SAN', ' ', 0, 0, 485, 600, 0, NULL, NULL, 1),
(239, 8, 'MILEY CIRUS - HANNAH MONTANA -', 'MIC', 'Av. Libertador y Crisologo Larralde SPORT CLUB', 0, 0, 50, 90, 0, NULL, NULL, 1),
(241, 24, 'ROSARIO - Menor 0 a 3 años', 'ROS', ' ', 0, 0, 440, 545, 0, NULL, NULL, 1),
(242, 24, 'SAN PEDRO - Menor 0 a 3 años', 'SAN', '', 0, 0, 390, 485, 0, NULL, NULL, 1),
(244, 1, '197 Y PANAMERICANA', '197', '197 Y PANAMERICANA', 80, 80, 0, NULL, 0, NULL, NULL, 1),
(245, 6, 'Menor Estancia 0 a 3 años', 'DON', 'Ruta 8 Km 87.3 Capilla del Señor', 0, 0, 119, 150, 0, NULL, NULL, 1),
(246, 24, 'GUALEGUAYCHU Dia Termal - Menor 0 a 3 años ', 'MEN', '', 0, 0, 430, 535, 0, NULL, NULL, 1),
(247, 24, 'Menor 4 a 10 años', 'MEN', '', 0, 0, 139, 179, 0, NULL, NULL, 1),
(248, 6, 'Menor Estancia 4 a 10 años', 'DON', 'Ruta 8 Km 87.3 Capilla del Señor', 0, 0, 325, 390, 0, NULL, NULL, 1),
(250, 1, 'SOLANO', 'SOL', '840 entre 898 y Donato Alvarez', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(252, 8, 'RICKY MARTIN - Velez Sarfield', 'VEL', 'Juan B. Justo Y Gral Paz - YPF -', 0, 0, 210, 260, 0, NULL, NULL, 1),
(253, 8, '- GUNS N´ ROSES - Ferro', 'FER', 'H. Pueyrredon y Neuquen', 0, 0, 90, 130, 0, NULL, NULL, 1),
(254, 8, 'AEROSMITH - Estadio Unico de La Plata', 'PLA', 'Av.25 y 37 - PLAZA ALBERTI -', 0, 0, 320, 390, 0, NULL, NULL, 1),
(255, 6, 'PARQUE DE LA COSTA ESTUDIANTIL', 'PCE', 'PARQUE DE LA COSTA (P. PLUS + VOUCHER ALMUERZO)', 0, 0, 195, 235, 0, NULL, NULL, 1),
(256, 29, 'PUERTO MADRYN Fin de semana largo', 'PTM', 'Hotel LAS MARAS', 0, 0, 1990, 2030, 0, NULL, NULL, 1),
(257, 29, 'HOTEL C.S.P.F.A', 'CSP', 'Rocamora 219 - C. del Uruguay', 0, 0, 0, 0, 0, NULL, NULL, 1),
(258, 31, 'FEDERACION Fin de semana largo', 'FED', 'Hotel IKEN Federacion', 0, 0, 1290, 1330, 0, NULL, NULL, 1),
(259, 31, 'Hotel IKEN base doble con MAP', 'FEM', 'Av. Del Lago y Los Cipreses', 0, 0, 950, 990, 0, NULL, NULL, 1),
(261, 31, 'MERCEDES (Menor 3 a 10 años)', 'MUN', '', 0, 0, 615, 764, 0, NULL, NULL, 1),
(264, 8, 'Britney Spears', 'BRI', 'Est. Unico de La Plata Av.25 y 37- PLAZA ALBERTI -', 0, 0, 70, 110, 0, NULL, NULL, 1),
(265, 8, 'River - Red Hot Chilli Pepper', 'RIV', 'Crisologo Larralde y Libertador (Sport Club)', 0, 0, 40, 80, 0, NULL, NULL, 1),
(266, 8, 'River - Roger Waters', 'RIV', 'Crisologo Larralde y Libertador - Sport Club -', 0, 0, 50, 90, 0, NULL, NULL, 1),
(267, 8, 'River - Justin Bieber -', 'RIV', 'Crisologo Larralde y Av. Libertador (Sport Club)', 0, 0, 40, 80, 0, NULL, NULL, 1),
(268, 8, 'Pearl Jam', 'EUL', 'Est. Unico de La Plata Av.25 y 37, Plaza Alberti', 0, 0, 70, 110, 0, NULL, NULL, 1),
(269, 24, 'GUALEGUAYCHU Dia Termal', 'GCH', '', 0, 0, 495, 615, 0, NULL, NULL, 1),
(270, 24, 'ROSARIO excursion de dia completo', 'ROS', '', 0, 0, 735, 910, 0, NULL, NULL, 1),
(271, 24, 'SAN PEDRO excursion dia completo', 'SAN', 'San Pedro', 0, 0, 585, 725, 0, NULL, NULL, 1),
(272, 32, 'Hotel Lago Los Molinos', 'HLM', 'A', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(273, 32, 'Anexo Hotel Lago Los Molinos', 'ALM', '*', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(274, 34, 'ADROGUE', 'ADR', 'Canale 921 - ADROGUE BUS', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(275, 32, 'Hotel PERGOLA 2* Villa Carlos Paz', 'PER', 'Florida 416', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(286, 33, 'PT9 - TERMINAL SUBTERRANEA', 'CAP', '9 DE JULIO Y SARMIENTO - DARSENAS 17/18/19/20', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(287, 33, 'AVELLANEDA ESTACION DE SERVICIO SHELL ', 'AVE', 'ESTACION DE SERVICIO SHELL ', 10, 10, 0, NULL, 0, NULL, NULL, 1),
(289, 33, 'LANUS - HIP. YRIGOYEN ESQ. 25 DE MAYO - LA DIVA', 'LAN', 'HIP. YRIGOYEN ESQ. 25 DE MAYO - REST. LA DIVA -', 25, 25, 0, NULL, 0, NULL, NULL, 1),
(290, 33, 'BANFIELD HIP. YRIGOYEN ESQ. FRENCH - BANCO ITAU -', 'BAN', 'HIP. YRIGOYEN ESQ. FRENCH - BANCO ITAU -', 35, 35, 0, NULL, 0, NULL, NULL, 1),
(291, 33, 'LOMAS DE ZAMORA HIP. YRIGOYEN ESQ. BOEDO', 'LMZ', 'HIP. YRIGOYEN ESQ. BOEDO - COSTUMBRES ARGENTINAS -', 40, 40, 0, 0, 0, NULL, NULL, 1),
(292, 33, 'TEMPERLEY HIP. YRIGOYEN ESQ.25 DE MAYO FTE FRANCES', 'TEM', 'HIP. YRIGOYEN ESQ. 25 DE MAYO - FTE BANCO FRANCES ', 50, 50, 0, NULL, 0, NULL, NULL, 1),
(293, 33, 'ADROGUE CANALE 921 - AGENCIA ADROGUE BUS -', 'AGE', 'CANALE 921 - ADROGUE BUS AGENCIA -', 60, 60, 0, NULL, 0, NULL, NULL, 1),
(294, 33, 'MONTE GRANDE', 'MGE', 'BVARD BS. AS. Y LAS HERAS (PETROBRAS)', 80, 80, 0, NULL, 0, NULL, NULL, 1),
(295, 34, 'TEMPERLEY', 'TEM', 'Av. Yrigoyen esq. 25 de Mayo - BANCO FRANCES', 10, 10, 0, NULL, 0, NULL, NULL, 1),
(296, 34, 'LOMAS DE ZAMORA', 'LMZ', 'Av. Yrigoyen esq. Boedo - ALCOYANA', 20, 20, 0, 0, 0, NULL, NULL, 1),
(297, 34, 'BANFIELD', 'BAN', 'Av. Yrigoyen esq. French  - SHELL', 25, 25, 0, 0, 0, NULL, NULL, 1),
(298, 34, 'LANUS', 'LAN', 'Av. Yrigoyen esq. 25 de Mayo - BANCO FRANCES', 35, 35, 0, NULL, 0, NULL, NULL, 1),
(299, 34, 'AVELLANEDA', 'AVE', 'Yrigoyen al 300 PLANETARIO - FRENTE A CARREFOUR', 50, 50, 0, 0, 0, NULL, NULL, 1),
(300, 34, 'PT9 - TERMINAL SUBTERRANEA', 'CAP', '9 de Julio y Sarmiento - DARSENAS 17/18/19/20', 60, 60, 0, NULL, 0, NULL, NULL, 1),
(301, 34, 'CIUDADELA', 'CIU', 'Av. Gral. Paz 51 - BINGO CIUDADELA', 75, 75, 0, 0, 0, NULL, NULL, 1),
(302, 34, 'PUENTE SAAVEDRA', 'PSA', 'Avenida Cabildo 4970.', 80, 80, 0, 0, 0, NULL, NULL, 1),
(303, 34, 'ZONA NORTE', 'NOR', 'Panamericana y Marquez - BANCO FRANCES', 90, 90, 0, 0, 0, NULL, NULL, 1),
(304, 8, '- CALLE 13 - Ferro', 'FER', 'H. Pueyrredon y Neuquen', 0, 0, 90, 130, 0, NULL, NULL, 1),
(305, 35, 'Hotel LAS MARAS', 'LMS', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(306, 36, 'Villa General Belgrano - entrada a la ciudad -', 'VGB', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(308, 1, 'TEMPERLEY San Jose', 'SJO', 'Luis Agote 29 y Av. Armesti- Jdin Asuncion de Mari', 0, 0, 130, 170, 0, NULL, NULL, 1),
(311, 37, 'ADROGUE', 'ADR', 'ROCA y CANALE (Plaza San Martín)', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(312, 37, 'LOMAS DE ZAMORA', 'LOM', 'HIPOLITO YRIGOYEN Y BOEDO (KIOSKO 24 HS)', 20, 20, 0, NULL, 0, NULL, NULL, 1),
(313, 37, 'LANUS', 'LAN', 'Hipolito Yrigoyen y 25 de mayo (BCO FRANCES)', 45, 45, 0, NULL, 0, NULL, NULL, 1),
(314, 37, 'CAPITAL FEDERAL', 'CFD', 'Pte. Roque Saenz Peña (diagonal norte) y Cerrito  (OCA)', 60, 60, 0, NULL, 0, NULL, NULL, 1),
(316, 37, 'TEMPERLEY BCO FRANCÉS ESQ. COTO.', 'TEM', '25 DE MAYO Y PAV. TEMP', 10, 10, 0, NULL, 0, NULL, NULL, 1),
(317, 37, 'PUENTE SAAVEDRA', 'pte', 'AV. CABILDO 4970 (Farmacia GRAN BOTICA)', 105, 105, 0, NULL, 0, NULL, NULL, 1),
(318, 37, 'CIUDADELA', 'CIU', 'AV. GENERAL PAZ 51 (BINGO CIUDADELA)', 90, 90, 0, NULL, 0, NULL, NULL, 1),
(319, 37, 'BOEDO OPEN 24 HS LOMAS', 'LOM', 'BOEDO Y PAV. LOMAS', 20, 20, 0, NULL, 0, NULL, NULL, 1),
(320, 37, 'AVELLANEDA', 'AVE', 'IRIGOYEN AL 300 PLANETARIO - FRENTE AL CARREFOUR', 50, 50, 0, NULL, 0, NULL, NULL, 1),
(321, 37, 'SHELL FRENCH BANFIELD.', 'BAN', 'FRENCH Y PAVÓN. BANFIELD', 25, 25, 0, NULL, 0, NULL, NULL, 1),
(322, 37, '25 DE MAYO BCO FRANCÉS LANÚS', 'LAN', '25 DE MAYO Y PAV. LANUS', 35, 35, 0, NULL, 0, NULL, NULL, 1),
(323, 37, 'CERRITO Y TUCUMAN', 'MET', 'CERRITO 590 ESQ TUCUMAN. CAP', 60, 60, 0, NULL, 0, NULL, NULL, 1),
(324, 37, 'PANAMERICANA Y MARQUEZ', 'PAN', 'BANCO FRANCES', 110, 110, 0, NULL, 0, NULL, NULL, 1),
(325, 37, '197 Y PANAMERICANA', '197', '197 Y PANAMERICANA', 80, 80, 0, NULL, 0, NULL, NULL, 1),
(328, 38, 'Gualeguaychú', 'GCH', 'GUALEGUAYCHU', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(329, 38, 'Rosario', 'ROS', 'ROSARIO', 0, 0, 365, 405, 0, NULL, NULL, 1),
(330, 38, 'San Pedro', 'SAP', 'SAN PEDRO', 0, 0, 365, 405, 0, NULL, NULL, 1),
(331, 38, 'Temaiken', 'TMK', 'ACCESO TEMAIKEN - ESCOBAR.', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(332, 8, 'MANA - Velez Sarfield', 'MAN', 'Juan B. Justo Y Gral Paz - YPF', 0, 0, 190, 240, 0, NULL, NULL, 1),
(334, 1, 'Ramirez 930 Esquina Espora.', 'ESP', 'Adrogué.', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(335, 13, 'DON ORIONE', 'DOR', '', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(336, 40, 'Hotel Carlos I - Ubicacion Silla 1ra fila', 'C11', 'Eva Peron 115 - C. del Uruguay - Entre Rios', 0, 0, 1650, 2060, 0, NULL, NULL, 1),
(337, 40, 'Hotel Carlos I - Ubicacion silla en 2da fila', 'c12', 'Eva Peron 115 - C. del Uruguay - Entre Rios', 0, 0, 1250, 1290, 0, NULL, NULL, 1),
(338, 40, 'HTL Carlos I Feriado Carnavales - Silla 1ra fila', 'C1f', 'Eva Peron 115 - C. del Uruguay - Entre Rios', 0, 0, 2250, 2750, 0, NULL, NULL, 1),
(339, 41, 'TERMAS DEL SALADO Dia Termal', 'TMS', 'General Belgrano', 0, 0, 845, 951, 0, NULL, NULL, 1),
(340, 8, 'River - MADONNA -', 'RIV', 'Crisologo Larralde y Libertador - SPORT CLUB -', 0, 0, 65, 105, 0, NULL, NULL, 1),
(341, 1, 'Rotonda Lavallol, Firestone EST. DE SERVICIO SHELL', 'LAV', 'ESTACION DE SERVICIO SHELL', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(342, 24, 'Padre Ignacio (Rosario)', 'PDI', '', 0, 0, 210, 250, 0, NULL, NULL, 1),
(343, 24, 'LUJAN excursion dia completo', 'LJN', '', 0, 0, 525, 650, 0, NULL, NULL, 1),
(344, 42, 'TERMAS VICTORIA ', 'VIC', 'Hotel Casablanca Victoria', 0, 0, 1950, 1990, 0, NULL, NULL, 1),
(345, 43, 'TANDIL Fin de semana largo', 'TAN', 'Hotel Aires Tandil', 0, 0, 1390, 1430, 0, NULL, NULL, 1),
(348, 6, 'Parque de La Costa (PASAPORTE PLUS + Traslado)', 'TIG', 'Puerta del Parque de la costa - TIGRE -', 0, 0, 615, 725, 0, NULL, NULL, 1),
(349, 8, 'River - LADY GAGA -', 'RIV', 'Crisologo Larralde y Libertador - SPORT CLUB -', 0, 0, 65, 105, 0, NULL, NULL, 1),
(350, 36, 'CONCEPCION ENTRE RIOS ', 'CNP', 'Hotel Virrey - Sansoni 2075', 0, 0, 0, 0, 0, NULL, NULL, 1),
(352, 32, 'HOTEL S.U.T.N.A.  ', 'VGB', 'Wagner y Formosa, Villa Rumipal, Córdoba ', 0, 0, 0, 0, 0, NULL, NULL, 1),
(353, 6, 'Tigre + Paseo Angostura', 'TAN', 'Terminal Fluvial', 0, 0, 810, 1007, 0, NULL, NULL, 1),
(354, 6, 'Tigre + Paseo Angostura + Almuerzo Ciudad', 'TAA', 'Puerto Fluvial', 0, 0, 1425, 1771, 0, NULL, NULL, 1),
(355, 6, 'Tigre + Deltaventura', 'TDA', 'Terminal Fluvial', 0, 0, 755, 940, 0, NULL, NULL, 1),
(356, 32, 'OPCION MEDIA PENSION', 'MAP', '', 0, 0, 100, 140, 0, NULL, NULL, 1),
(357, 46, 'Villa General Belgrano.', 'TVG', 'Est. de Servicio PETROBRAS - Arco de entrada.', 0, 0, 1800, 0, 0, NULL, NULL, 1),
(359, 32, 'Hotel SANTA LUCIA', 'HST', 'Ruta Provincial Nº 5 Km. 71 Villa Ciudad ParqueVGB', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(360, 32, 'Hotel SANTA LUCIA Villa Ciudad Parque ', 'HST', 'Ruta Provincial Nº 5 Km. 71 Villa General Belgrano', 0, 0, 1450, 1490, 0, NULL, NULL, 1),
(361, 8, 'River - KISS -', 'RIV', 'Crisologo Larralde y Libertador - SPORT CLUB -', 0, 0, 65, 105, 0, NULL, NULL, 1),
(362, 38, 'Termas de Gualeguaychu Menores 0 a 3 años', 'MEN', 'Termas de Gualeguaychu', 0, 0, 115, 155, 0, NULL, NULL, 1),
(363, 8, 'Velez - AXEL -', 'VEL', 'Juan B. Justo Y Gral Paz - YPF -', 0, 0, 60, 100, 0, NULL, NULL, 1),
(365, 24, 'MUNDO MARINO Salida especial', 'MUM', 'Mundo Marino - San Clemente', 0, 0, 340, 380, 0, NULL, NULL, 1),
(366, 37, 'COLEGIO MANUEL ESTRADA', 'MAE', 'Av. San Martin 3701 (R. Calzada)', 0, 0, 340, 380, 0, NULL, NULL, 1),
(367, 1, 'COLEGIO MANUEL ESTRADA', 'MAN', 'Av. San Martin 3701 - R. Calzada -', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(368, 50, 'MAR DEL PLATA ', 'MDQ', 'Av. Luro 2286, Mar del Plata', 0, 0, 1450, 1490, 0, NULL, NULL, 1),
(369, 8, 'Serrat y Sabina - BOCA JUNIORS -', 'BOC', 'Avenida Patricios y Brandsen.', 0, 0, 65, 105, 0, NULL, NULL, 1),
(370, 50, 'OPCION MEDIA PENSION', 'MAP', '', 0, 0, 135, 175, 0, NULL, NULL, 1),
(371, 42, 'VICTORIA FIN DE SEMANA ', 'VER', 'HOTEL CASABLANCA', 0, 0, 890, 930, 0, NULL, NULL, 1),
(372, 8, 'LAS PASTILLAS DEL ABUELO - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 330, 430, 0, NULL, NULL, 1),
(373, 8, 'ROD STEWART - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 330, 400, 0, NULL, NULL, 1),
(374, 40, 'HTL Carlos I Feriado Carnavales - Silla 2ra fila', 'C11', 'Eva Peron 115 - C. del Uruguay - Entre Rios', 0, 0, 2250, 2750, 0, NULL, NULL, 1),
(375, 8, '- ENRIQUE IGLESIAS - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 330, 400, 0, NULL, NULL, 1),
(376, 8, 'ELTON JOHN - Velez Sarfield', 'VEL', 'Juan B. Justo Y Gral Paz - YPF -', 0, 0, 70, 110, 0, NULL, NULL, 1),
(377, 8, 'PEARL JAM - Costanera Sur', 'COS', 'ESQUINA AIME PAINE Y PEÑALOZA.', 0, 0, 70, 110, 0, NULL, NULL, 1),
(379, 8, 'THE CURE - River Plate', 'RIV', 'Crisologo Larrarle y Libertador - SPORT CLUB -', 0, 0, 70, 110, 0, NULL, NULL, 1),
(380, 8, 'RICARDO ARJONA - La Rural.', 'ARJ', 'Juncal 4431, Palermo, Buenos Aires.', 0, 0, 70, 110, 0, NULL, NULL, 1),
(381, 8, 'DAVID BISBAL - Hipodromo de Palermo', 'HIP', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 390, 490, 0, NULL, NULL, 1),
(382, 8, 'SHAKIRA - Estadio Velez Sarfield', 'VEL', 'Juan B. Justo Y Gral Paz - YPF -', 0, 0, 390, 490, 0, NULL, NULL, 1),
(383, 53, 'DON SILVANO ', 'DON', 'Ruta 8 Km 87.3 Capilla del Señor', 0, 0, 1805, 2243, 0, NULL, NULL, 1),
(384, 54, 'Rosario Excursion en el dia ', 'ROS', '', 0, 0, 1725, 2144, 0, NULL, NULL, 1),
(385, 41, 'GUALEGUAYCHU Dia Termal', 'GUA', 'Gualeguaychu - Entre Rios.', 0, 0, 985, 1224, 0, NULL, NULL, 1),
(386, 25, 'SAN PEDRO Excursion en el dia ', 'PED', '', 0, 0, 585, 670, 0, NULL, NULL, 1),
(387, 31, 'MERCEDES ', 'MUN', '', 0, 0, 675, 838, 0, NULL, NULL, 1),
(388, 53, 'CAMPO BRANDSEN ', 'BRA', 'kilómetro 38,500 de la Ruta 215 - BRANDSEN', 0, 0, 1215, 1510, 0, NULL, NULL, 1),
(389, 41, 'CONCEPCION Dia Termal - Menores 0 a 3 años ', 'MEN', 'Concepcion del Uruguay - Entre Rios.', 0, 0, 725, 901, 0, NULL, NULL, 1),
(390, 54, 'Rosario Excursion en el dia (Menor de 3 años)', 'MEN', '', 0, 0, 910, 1131, 0, NULL, NULL, 1),
(391, 25, 'SAN PEDRO Excursion en el dia (Menor de 3 años)', 'MEN', '', 0, 0, 350, 450, 0, NULL, NULL, 1),
(392, 53, 'DON SILVANO (Menor 0 a 3 años)', 'MEN', 'Ruta 8 Km 87.3 Capilla del Señor', 0, 0, 545, 677, 0, NULL, NULL, 1),
(393, 53, 'DON SILVANO (Menor de 4 a 10 años)', 'MEN', 'Ruta 8 Km 87.3 Capilla del Señor', 0, 0, 1190, 1479, 0, NULL, NULL, 1),
(394, 8, 'Ciro y Los Persas - LUNA PARK -', 'LUN', 'Luna Park', 0, 0, 50, 90, 0, NULL, NULL, 1),
(395, 8, 'Fito Paez - LUNA PARK -', 'LUN', 'Luna Park', 0, 0, 50, 90, 0, NULL, NULL, 1),
(396, 8, 'Maravilla Martinez VS Martin Murray - VELEZ -', 'VEL', 'Juan B. Justo Y Gral Paz - YPF -', 0, 0, 70, 110, 0, NULL, NULL, 1),
(397, 59, 'CERRITO Y TUCUMAN ', 'CAP', 'CERRITO ESQUINA TUCUMAN ', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(398, 59, 'AVELLANEDA ', 'AVE', 'HIPOLITO IRIGOYEN 300 ESTACION DE SERVICIO SHELL ', 10, 10, 0, NULL, 0, NULL, NULL, 1),
(399, 59, 'LANUS ', 'LAN', '25 DE MAYO ESQUINA HIP. IRIGOYEN FRENTE AL FRANCES', 25, 25, 0, NULL, 0, NULL, NULL, 1),
(400, 59, 'BANFIELD ', 'BAN', 'IRIGOYEN ESQ. FRENCH BANCO ITAU ', 35, 35, 0, NULL, 0, NULL, NULL, 1),
(401, 59, 'LOMAS DE ZAMORA', 'LMZ', 'IRIGOYEN ESQUINA BOEDO HELADERIA VESSA', 45, 45, 0, NULL, 0, NULL, NULL, 1),
(402, 59, 'TEMPERLEY', 'TPY', 'IRIGOYEN ESQ. 25 DE MAYO FRENTE BCO FRANCES ', 50, 50, 0, NULL, 0, NULL, NULL, 1),
(403, 59, 'ADROGUE AGENCIA ', 'ADR', 'CANALE ESQ ROCA AGENCIA ', 60, 60, 0, NULL, 0, NULL, NULL, 1),
(404, 8, '- BON JOVI - Velez.', 'VEL', 'Juan B. Justo Y Gral Paz - YPF -', 0, 0, 80, 120, 0, NULL, NULL, 1),
(405, 8, '- IRON MAIDEN - River Plate', 'RIV', 'Crisologo Larralde y Libertador - SPORT CLUB -', 0, 0, 70, 110, 0, NULL, NULL, 1),
(406, 8, 'ABEL PINTOS - Estadio Unico de La Plata', 'PLA', 'Av. 23 y 37 - COMPLEJO LAS PALMAS -', 0, 0, 440, 540, 0, NULL, NULL, 1),
(407, 8, 'BLACK SABBATH - Velez Sarfield', 'VEL', 'Juan B. Justo y Gral Paz - YPF', 0, 0, 240, 290, 0, NULL, NULL, 1),
(408, 8, '- EROS RAMAZOTTI - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 70, 110, 0, NULL, NULL, 1),
(409, 8, '- INDIO SOLARI - Estadio Malvinas Argentinas', 'MAL', 'Mendoza', 0, 0, 900, 940, 0, NULL, NULL, 1),
(410, 8, '- JUSTIN BIEBER - River Plate.', 'RIV', 'Crisologo Larralde y Libertador - SPORT CLUB -', 0, 0, 70, 110, 0, NULL, NULL, 1),
(411, 8, 'RICARDO MONTANER - Directv Arena', 'ARE', 'Olivos 3215, Panamericana km 35,5 - Tortuguitas', 0, 0, 295, 345, 0, NULL, NULL, 1),
(412, 8, '- MORRISEY - Teconopolis', 'TEC', 'General Paz entre Balbín y Constituyentes.', 0, 0, 70, 110, 0, NULL, NULL, 1),
(413, 8, 'PERSONAL FEST - Geba Sede San Martin', 'GEB', 'Av. Figueroa Alcorta esq. Bunge.', 0, 0, 240, 290, 0, NULL, NULL, 1),
(414, 8, '- PERSONAL FEST MUSE - Geba Sede San Martin', 'GEB', 'Av. Figueroa Alcorta esq. Bunge. ', 0, 0, 70, 110, 0, NULL, NULL, 1),
(415, 53, 'CAMPO BRANDSEN (Menor de 3 años)', 'BRA', 'kilómetro 38,500 de la Ruta 215 - BRANDSEN', 0, 0, 695, 1131, 0, NULL, NULL, 1),
(416, 53, 'CAMPO BRANDSEN (Menor de 4 a 10 años)', 'BRA', 'kilómetro 38,500 de la Ruta 215 - BRANDSEN', 0, 0, 910, 864, 0, NULL, NULL, 1),
(417, 8, '- MARC ANTHONY - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 70, 110, 0, NULL, NULL, 1),
(418, 32, 'CABAÑAS', 'CBN', '(Villa Rumipal - Cordoba)', 0, 0, 0, 0, 0, NULL, NULL, 1),
(421, 8, 'MARCO ANTONIO SOLIS - Parque Roca.', 'CIU', 'Dir.Gral. de Licencias -Roca a 300 mts de Escalada', 0, 0, 400, 500, 0, NULL, NULL, 1),
(422, 8, '- KORN - Estadio Malvinas Argentinas', 'MAL', 'Warnes y Av. Chorroarin - FRENTE A EASY - Paternal', 0, 0, 70, 110, 0, NULL, NULL, 1),
(423, 8, '- LIMP BIZKIT - Estadio Malvinas Argentinas', 'MAL', 'Warnes y Av. Chorroarin - FRENTE A EASY - Paternal', 0, 0, 70, 110, 0, NULL, NULL, 1),
(424, 6, 'Tigre + Deltaventura ( MENOR de 4 a 10 años)', 'DEL', 'Estancion Fluvial', 0, 0, 490, 610, 0, NULL, NULL, 1),
(425, 32, 'Solo traslado', 'TRA', 'Villa General Belgrano Est. de servicio PETROBRAS)', 0, 0, 0, NULL, 0, NULL, NULL, 1),
(426, 8, 'STEVIE WONDER - Velez Sarfield -', 'VEL', 'Juan B. Justo Y Gral Paz - YPF -', 0, 0, 70, 110, 0, NULL, NULL, 1),
(427, 23, 'Traslado ida y vuelta + Entrada + Ubicacion', 'TEU', '', 0, 0, 0, 0, 0, NULL, NULL, 1),
(428, 41, 'CONCEPCION Dia Termal', 'CON', 'Concepcion del Uruguay - Entre Rios.', 0, 0, 985, 1224, 0, NULL, NULL, 1),
(429, 8, '- MARCO ANTONIO SOLIS - Ferro', 'FER', 'Pueyrredon y Neuquen', 0, 0, 90, 130, 0, NULL, NULL, 1),
(430, 8, 'CIRO Y LOS PERSAS - River Plate', 'RIV', 'Av. Libertador y Crisologo Larralde - SPORT CLUB', 0, 0, 390, 490, 0, NULL, NULL, 1),
(431, 65, 'MORENO - Av del Libertador y Colectora', 'MOR', 'Av del Libertador y Colectora', 0, 0, 0, 0, 0, NULL, NULL, 1),
(432, 65, 'MERLO - Bingo Merlo por Rivadavia', 'MER', 'Bingo Merlo por Rivadavia', 15, 15, 0, 0, 0, NULL, NULL, 1),
(434, 65, 'RAMOS MEJÍA - Rivadavia y Av. De Mayo.', 'RAM', 'Rivadavia y Av. De Mayo.', 45, 45, 0, 0, 0, NULL, NULL, 1),
(435, 65, 'PTE. SAAVEDRA - Cabildo y Vedia', 'PTE', 'Cabildo y Vedia', 90, 90, 0, 0, 0, NULL, NULL, 1),
(436, 65, 'CENTRO - Carlos Pelegrini 651', 'CEN', 'Carlos Pelegrini 651', 120, 120, 0, 0, 0, NULL, NULL, 1),
(437, 65, 'QUILMES - Calchaquí y 12 de Octubre.', 'QUI', ' Calchaquí y 12 de Octubre.', 165, 165, 0, 0, 0, NULL, NULL, 1),
(438, 65, 'FCIO. VARELA - Calchaqui 6600 Bco.Pcia', 'VAR', 'Calchaqui 6600 Bco.Pcia', 165, 165, 0, 0, 0, NULL, NULL, 1),
(439, 65, 'BURZACO- Rotonda El Vapor.', 'BUR', 'Rotonda El Vapor.', 45, 45, 0, 0, 0, NULL, NULL, 1),
(440, 65, 'ADROGUE - H. Yrigoyen 13300 Boulevard Shopping', 'ADR', 'H. Yrigoyen 13300 Boulevard Shopping', 60, 60, 0, 0, 0, NULL, NULL, 1),
(441, 65, 'LOMAS DE ZAMORA - H. Yrigoyen y Laprida', 'LOM', 'H. Yrigoyen y Laprida', 75, 75, 0, 0, 0, NULL, NULL, 1),
(442, 65, 'LANUS - H. Yrigoyen y 25 de Mayo ', 'LAN', 'H. Yrigoyen y 25 de Mayo ', 90, 90, 0, 0, 0, NULL, NULL, 1),
(443, 65, 'AVELLANEDA - Av. Mitre Esquina Sarmiento', 'AVE', 'Av. Mitre Esquina Sarmiento', 105, 105, 0, 0, 0, NULL, NULL, 1),
(446, 64, 'MUNDO MARINO - Menor 3 a 10 años', 'MUN', 'San Clemente', 0, 0, 1490, 1735, 0, NULL, NULL, 1),
(447, 64, 'MUNDO MARINO ', 'MUN', 'San Clemente', 0, 0, 1530, 1775, 0, NULL, NULL, 1),
(448, 31, 'TERMAS MARINAS', 'MAR', 'San Clemente', 0, 0, 1045, 1290, 0, NULL, NULL, 1),
(449, 31, 'TERMAS MARINAS (Menor de 3 a 10 años)', 'MAR', 'San Clemente', 0, 0, 945, 1180, 0, NULL, NULL, 1),
(450, 11, 'LUJAN - Solo Traslado.', 'LUJ', '', 0, 0, 529, 657, 0, NULL, NULL, 1),
(451, 8, 'LUCIANO PEREYRA - Velez Sarfield', 'VEL', 'Juan B. Justo Y Gral Paz - YPF -', 0, 0, 390, 490, 0, NULL, NULL, 1),
(452, 8, 'LOLLAPALOOZA - Hipodromo de San Isidro', 'HIP', 'Av. Márquez 504', 0, 0, 400, 500, 0, NULL, NULL, 1),
(453, 8, '- AVRIL LAVIGNE - Estadio Malvinas Argentinas', 'MAL', 'Warnes y Av. Chorroarin - FRENTE A EASY - Paternal', 0, 0, 110, 150, 0, NULL, NULL, 1),
(454, 8, '- MEGADETH - Estadio Malvinas Argentinas', 'MAL', 'Warnes y Av. Chorroarin - FRENTE A EASY - Paternal', 0, 0, 110, 150, 0, NULL, NULL, 1),
(455, 8, '- INDIO SOLARI - Hipodromo de Gualeguaychu.', 'HIP', '', 0, 0, 850, 0, 0, NULL, NULL, 1),
(456, 8, '- LUIS MIGUEL - La Rural', 'RUR', 'La Rural', 0, 0, 140, 180, 0, NULL, NULL, 1),
(457, 8, 'MARC ANTHONY - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 390, 490, 0, NULL, NULL, 1),
(458, 8, 'U 2 - Estadio Unico de La Plata', 'PLA', 'Av.25 y 37 - PLAZA ALBERTI -', 0, 0, 350, 420, 0, NULL, NULL, 1),
(459, 8, '- RICARDO ARJONA - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 140, 180, 0, NULL, NULL, 1),
(460, 8, '- LUIS MIGUEL - Geba Sede San Martin', 'GEB', 'Av. Figueroa Alcorta esq. Bunge.', 0, 0, 140, 180, 0, NULL, NULL, 1),
(461, 8, 'MICHAEL BUBLE - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 140, 180, 0, NULL, NULL, 1),
(462, 8, '- MILEY CIRUS - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 140, 180, 0, NULL, NULL, 1),
(464, 67, 'Granja Chocolatada ( Traslado + Entrada)', 'GRA', 'Panamericana Ramal Pilar Kilómetro 76', 0, 0, 295, 365, 0, NULL, NULL, 1),
(465, 67, 'Granja Chocolatada ( Menor de 3 años )', 'GRA', 'Panamericana Ramal Pilar Kilómetro 76', 0, 0, 215, 265, 0, NULL, NULL, 1),
(466, 66, 'Solo Traslado', 'REP', 'Camino General Belgrano.  Gonnet, La Plata', 0, 0, 429, 529, 0, NULL, NULL, 1),
(468, 68, 'MORENO Gral Mitre y Av. Libertador (Frente Plaza)', 'MOR', 'Gral Mitre y Av. Libertador ( Frente Plaza)', 0, 0, 0, 0, 0, NULL, NULL, 1),
(469, 68, 'MERLO - Bingo Merlo por Rivadavia', 'MER', 'Bingo Merlo por Rivadavia', 15, 15, 0, 0, 0, NULL, NULL, 1),
(470, 68, 'MORON Alte Brown Esquina Uruguay ( Clinica Modelo)', 'MRO', 'Alte Brown Esquina Uruguay ( Clinica Modelo)', 30, 30, 0, 0, 0, NULL, NULL, 1),
(471, 68, 'RAMOS MEJIA Rivadavia y Av. de Mayo', 'RAM', 'Rivadavia y Av. de Mayo', 45, 45, 0, 0, 0, NULL, NULL, 1),
(472, 41, 'TERMAS DEL SALADO - Menores de 0 a 3 años ', 'MEN', 'General Belgrano.', 0, 0, 550, 684, 0, NULL, NULL, 1),
(473, 8, '- ROMEO SANTOS - Estadio River Plate', 'RIV', 'Crisologo Larralde y Libertador - SPORT CLUB -', 0, 0, 150, 190, 0, NULL, NULL, 1),
(475, 71, 'Solo traslado ida y vuelta', 'TRA', '', 0, 0, 550, 0, 0, NULL, NULL, 1),
(476, 41, 'Solo Traslado ', 'TRA', '', 0, 0, 385, 0, 0, NULL, NULL, 1),
(477, 8, 'GREEN DAY - Velez Sarfield', 'RIV', 'Juan B. Justo Y Gral Paz - YPF -', 0, 0, 300, 370, 0, NULL, NULL, 1),
(478, 40, 'Grand Hotel Casino Feriado Carnavales', 'C13', 'Eva Perón 114 esq. Rocamora', 0, 0, 3290, 4100, 0, NULL, NULL, 1),
(479, 40, 'Virrey Hotel Feriado Carnavales', 'C12', 'Sansoni 2075', 0, 0, 3290, 4100, 0, NULL, NULL, 1),
(480, 40, 'Virrey Hotel Feriado Carnavales', 'C14', 'Sansoni 2075', 0, 0, 3290, 4100, 0, NULL, NULL, 1),
(481, 8, '- VIOLETA - Tecnopolis', 'TEC', 'General Paz Balbín y Constituyentes Villa Martelli', 0, 0, 150, 190, 0, NULL, NULL, 1),
(482, 8, '- CAMILA - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 150, 190, 0, NULL, NULL, 1),
(483, 8, 'MOON PARK - Costa Salguero', 'COS', 'Gral Obligado y Jeronimo', 0, 0, 150, 190, 0, NULL, NULL, 1),
(484, 8, 'QUEEN - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 170, 210, 0, NULL, NULL, 1),
(485, 24, 'DADY YANKEE - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 170, 210, 0, NULL, NULL, 1),
(486, 8, 'SYSTEM OF A DOWN - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 170, 210, 0, NULL, NULL, 1),
(487, 8, 'NO TE VA GUSTAR - Directv Arena', 'ARE', 'Olivos 3215, Panamericana Km 35,5. Tortuguitas', 0, 0, 400, 500, 0, NULL, NULL, 1),
(488, 8, 'BLUR - Tecnopolis', 'TEC', 'Gral Paz y Av. San Martín - Villa Martelli', 0, 0, 170, 210, 0, NULL, NULL, 1),
(489, 8, 'MUSE - Complejo al Rio Vicente Lopez', 'COM', 'Av. Del Libertador Gral San Martin 215 - CARREFOUR', 0, 0, 210, 250, 0, NULL, NULL, 1),
(490, 8, 'NO TE VA GUSTAR - PLAYON del Estadio Unico ', 'PLA', 'PLAYON del Estadio Unico de La Plata', 0, 0, 350, 420, 0, NULL, NULL, 1),
(491, 8, 'DADY YANKEE / OZUNA - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 330, 400, 0, NULL, NULL, 1),
(492, 8, 'LA BERISO - PLAYON del Estadio Unico de La Plata', 'PLA', 'PLAYON del Estadio Unico de La Plata', 0, 0, 230, 270, 0, NULL, NULL, 1),
(493, 8, 'ALEJANDRO SANZ - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 190, 240, 0, NULL, NULL, 1),
(494, 8, 'ROLLING STONE - River Plate', 'RIV', 'Crisologo Larralde y Libertador - SPORT CLUB -', 0, 0, 200, 240, 0, NULL, NULL, 1),
(495, 8, 'ARIANA GRANDE - Complejo al Rio Vicente Lopez', 'COM', 'Av. Del Libertador Gral San Martin 215 - CARREFOUR', 0, 0, 210, 260, 0, NULL, NULL, 1),
(496, 8, 'MAROON 5 - Hipodromo de Palermo', 'HIP', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 190, 240, 0, NULL, NULL, 1),
(497, 8, 'ROLLING STONES - Estadio Unico de La Plata', 'PLA', 'Av. 25 y 37 - PLAZA ALBERTI', 0, 0, 250, 300, 0, NULL, NULL, 1),
(498, 36, 'Hotel Carlos I', 'CON', 'Eva Peron 115 - C. del Uruguay - Entre Rios', 0, 0, 0, 0, 0, NULL, NULL, 1),
(499, 41, 'GUALEGUAYCHU Dia Termal - Menores 0 a 3 años', 'MEN', 'Gualeguaychu - Entre Rios.', 0, 0, 725, 901, 0, NULL, NULL, 1),
(500, 8, 'SLIPKNOT - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 170, 210, 0, NULL, NULL, 1),
(501, 8, 'DADY YANKEE - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 400, 500, 0, NULL, NULL, 1),
(502, 8, 'ROMEO SANTOS - Estadio Unico de La Plata', 'PLA', 'Av.25 y 37 - PLAZA ALBERTI -', 0, 0, 230, 270, 0, NULL, NULL, 1),
(503, 8, 'DAVID GILMOUR - Hipodromo San Isidro', 'ISI', 'Marquez y Rolon - YPF -', 0, 0, 230, 270, 0, NULL, NULL, 1),
(504, 8, 'DAVID GILMOUR - Hipodromo de San Isidro', 'ISI', ' Av. Márquez 504', 0, 0, 230, 270, 0, NULL, NULL, 1),
(505, 8, 'LIAM GALLAGHER - Directv Arena', 'ARE', 'Olivos 3215, Panamericana km 35,5 - Tortuguitas', 0, 0, 380, 450, 0, NULL, NULL, 1),
(506, 8, 'STING - Hipodromo de Palermo', 'HIP', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 270, 340, 0, NULL, NULL, 1),
(507, 8, 'IRON MAIDEN - Velez Sarfield', 'VEL', 'Juan B. Justo y Gral Paz - YPF', 0, 0, 190, 240, 0, NULL, NULL, 1),
(508, 8, 'ROGER WATERS - Estadio Unico de La Plata', 'PLA', 'Av. 23 y 37 - COMPLEJO LAS PALMAS -', 0, 0, 440, 540, 0, NULL, NULL, 1),
(509, 13, 'CABA Nuñez Libertador 7100 Est. Serv ESSO', 'CAN', 'LIBERTADOR 7100', 0, 0, 0, 0, 1, '-34.54697329078353', '-58.45701277256006', 0),
(510, 13, 'CABA Palermo Santa fe 4200 BURGER KING', 'CAP', 'SANTA DE 4200', 0, 0, 0, 0, 1, '-34.58129988849795', '-58.421637117862645', 0),
(511, 13, 'CABA RECOLETA Cerrito y Libertador SHELL', 'CAR', 'LIBERTADOR 600 ', 0, 0, 0, 0, 1, '-34.58895136771859', '-58.38147640228266', 0),
(512, 13, 'CABA PT9 9 DE JULIO Y SARMIENTO', 'PT9', '9 DE JULIO Y SARMIENTO', 0, 0, 0, 0, 1, '-34.60511321519404', '-58.381530046462956', 0),
(513, 13, 'CABA Agronomia/BEIRO ESQUINA SAN MARTIN EST.ESSO', 'AGR', 'BEIRO ESQUINA SAN MARTIN EST.ESSO', 0, 0, 0, 0, 1, '-34.596723577585784', '-58.49700450897211', 0),
(514, 13, 'CABA Caballito/GAONA ESQUINA MARTIN GAIZA YPF', 'CAB', 'AVENIDA GAONA ESQUINA MARTIN GAIZA YPF', 0, 0, 0, 0, 1, '-34.608168598973776', '-58.44689011573786', 0),
(515, 13, 'CABA LINIERS/VERSALLES/JUANB. JUSTO Y GRAL PAZ YPF', 'CAL', 'JUAN B. JUSTO Y GRAL PAZ YPF', 0, 0, 0, 0, 1, '-34.63486751415524', '-58.52846145629877', 0),
(516, 13, 'CABA Lugano/Mataderos Larrazabal y Dellepiane YPF', 'CAM', 'COLECTORA DELLEPIANE Y LARRAZABAL', 0, 0, 0, 0, 1, '-34.6732056822984', '-58.47658753395075', 0),
(517, 13, 'CABA Soldati Pompeya Av Cruz y Centenera ESSO', 'CAS', 'AV CRUZ Y DEL BARCO CENTENERA', 0, 0, 0, 0, 1, '-34.648001922043825', '-58.42861890792841', 0),
(518, 13, 'CABA FLORES/P.CHACABUCO/ ALBERDI 1500 Y MIRO SHELL', 'CAF', 'JUAN BAUTISTA ALBERDI 1500 Y MIRO SHELL', 0, 0, 0, 0, 1, '-34.62609242954433', '-58.44904661178583', 0),
(519, 13, 'CABA Barracas/Const M.GARCIA Y MONTES DE OCA YPF', 'CAG', 'MARTIN GARCIA Y MONTES DE OCA YPF', 0, 0, 0, 0, 1, '-34.634214270216816', '-58.37521076202387', 0),
(520, 13, 'CABA Once/Almagr/BalvanerINDEPENDENCIA Y JUJUY YPF', 'CAO', 'INDEPENDENCIA Y JUJUY YPF', 0, 0, 0, 0, 1, '-34.618905703220086', '-58.40332031249994', 0),
(521, 8, 'LA BERISO - Velez Sarfield', 'VEL', 'Juan B. Justo Y Gral Paz - YPF -', 0, 0, 390, 490, 0, NULL, NULL, 0),
(522, 40, 'Grand Hotel Casino', 'GRA', 'Eva Peron 114 esq Rocamora', 0, 0, 2090, 2650, 0, NULL, NULL, 1),
(523, 8, 'DEMI LOVATO - Directv Arena', 'ARE', 'Olivos 3215, Panamericana km 35,5 - Tortuguitas', 0, 0, 400, 500, 0, NULL, NULL, 1),
(524, 18, '16/01 VILLA GESELL  ', 'VGL', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(526, 18, '16/01 CARILO ', 'CAR', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(529, 18, '16/01 MAR AZUL', 'MAZ', '', 0, 0, 1050, 1150, 0, NULL, NULL, 1),
(530, 8, 'MARC ANTHONY - Tecnopolis', 'TEC', 'General Paz y Constituyentes - Villa Martelli', 0, 0, 190, 240, 0, NULL, NULL, 1),
(531, 40, 'Virrey Hotel', 'VIR', 'Sansoni 2075', 0, 0, 2090, 2650, 0, NULL, NULL, 1),
(532, 8, 'INDIO SOLARI - Hipodromo de Tandil', 'HIP', 'Hipodromo de Tandil', 0, 0, 650, 800, 0, NULL, NULL, 1),
(534, 24, 'TANDIL - Full Day', 'TAN', 'Tandil', 0, 0, 1140, 1415, 0, NULL, NULL, 1),
(539, 8, 'INCUBUS - Directv Arena', 'ARE', 'Olivos 3215, Panamericana km 35,5 - Tortuguitas', 0, 0, 350, 420, 0, NULL, NULL, 1),
(542, 65, 'PTE SAAVEDRA - Cabildo y Vedia', 'PTE', 'Cabildo y Vedia', 45, 45, 0, 0, 0, NULL, NULL, 1),
(543, 65, 'CENTRO - Carlos Pelegrini 651', 'CEN', 'Carlos Pelegrini 651', 60, 60, 0, 0, 0, NULL, NULL, 1),
(544, 65, 'AVELLANEDA - Av. Mitre Esquina Sarmiento', 'AVE', 'Av. Mitre Esquina Sarmiento', 75, 75, 0, 0, 0, NULL, NULL, 1),
(545, 65, 'LANUS - Pavon y 25 de Mayo', 'LAN', 'Pavon y 25 de Mayo', 90, 90, 0, 0, 0, NULL, NULL, 1),
(546, 65, 'LOMAS - Pavon y Laprida', 'LOM', 'Pavon y Laprida', 105, 105, 0, 0, 0, NULL, NULL, 1),
(548, 65, 'BURZACO - Rotonda El Vapor', 'BUR', 'Rotonda El Vapor', 135, 135, 0, 0, 0, NULL, NULL, 1),
(549, 78, 'Hotel ESER', 'SAN', 'Mitre 1335 - San Pedro, Bs As.', 0, 0, 2250, 0, 0, NULL, NULL, 1),
(550, 79, 'Hotel SOLANS REPUBLICA', 'ROS', 'San Lorenzo 955, Rosario, Santa Fe.', 0, 0, 0, 0, 0, NULL, NULL, 1),
(551, 76, 'Hotel CARLOS I', 'BAS', 'Eva Peron 115 - C. del Uruguay - Entre Rios', 0, 0, 1850, 0, 0, NULL, NULL, 1),
(552, 77, 'Hotel CARLOS I', 'PAL', 'Eva Peron 115 - C. del Uruguay - Entre Rios', 0, 0, 2150, 0, 0, NULL, NULL, 1),
(553, 75, 'HOTEL NOGARO', 'URD', 'Av. Libertad, Urdinarrain, Entre Ríos', 0, 0, 0, 0, 0, NULL, NULL, 1),
(554, 8, 'MALUMA - Hipodromo de Palermo', 'HIP', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 390, 490, 0, NULL, NULL, 1),
(555, 8, 'MORRISEY - Directv Arena', 'ARE', 'Olivos 3215, Panamericana km 35,5 - Tortuguitas', 0, 0, 440, 540, 0, NULL, NULL, 1),
(556, 8, 'LA BERISO - Estadio Ferro', 'FER', 'Pueyrredon y Neuquen', 0, 0, 200, 250, 0, NULL, NULL, 1),
(557, 8, 'GOT7 - Directv Arena', 'ARE', 'Olivos 3215, Panamericana km 35,5 - Tortuguitas', 0, 0, 400, 500, 0, NULL, NULL, 1),
(558, 8, 'MARC ANTHONY - Directv Arena', 'ARE', 'Olivos 3215, Panamericana km 35,5 - Tortuguitas', 0, 0, 260, 310, 0, NULL, NULL, 1),
(559, 8, 'BRUNO MARS - Estadio Unico de La Plata', 'PLA', 'Av. 23 y 37 - COMPLEJO LAS PALMAS -', 0, 0, 350, 420, 0, NULL, NULL, 1),
(560, 8, 'LA RENGA - Pergamino', 'PER', 'Circuito El Panorámico - PERGAMINO', 0, 0, 600, 650, 0, NULL, NULL, 1),
(561, 8, 'SCORPIONS - Malvinas Argentinas', 'MAL', 'Warnes y Av. Chorroarin - FRENTE A EASY - Paternal', 0, 0, 240, 290, 0, NULL, NULL, 1),
(562, 8, 'LAURA PAUSINI - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 240, 290, 0, NULL, NULL, 1),
(563, 8, 'ABEL PINTOS - River Plate', 'RIV', 'Av. Libertador y Crisologo Larralde SPORT CLUB', 0, 0, 300, 370, 0, NULL, NULL, 1),
(564, 8, 'MAXIMUS FESTIVAL - Tecnopolis', 'TEC', 'General Paz y Constituyentes - Villa Martelli', 0, 0, 270, 340, 0, NULL, NULL, 1),
(565, 41, 'GUAYCHU Dia Termal', 'GCH', 'Guaychu - Entre Rios.', 0, 0, 1045, 1299, 0, NULL, NULL, 1),
(566, 41, 'GUAYCHU Dia Termal - Menores 0 a 3 años ', 'GCH', 'Guaychu - Entre Rios.', 0, 0, 725, 833, 0, NULL, NULL, 1),
(567, 41, 'SAN JOSE Dia Termal - Menores 0 a 3 años ', 'SJO', 'Villa de San Jose - Entre Rios.', 0, 0, 750, 932, 0, NULL, NULL, 1),
(568, 41, 'SAN JOSE Dia Termal', 'SJO', 'Villa de San Jose - Entre Rios.', 0, 0, 1080, 1342, 0, NULL, NULL, 1),
(569, 41, 'SAN JOSE Dia Termal - Almuerzo sin bebida', 'SJO', 'Villa San Jose, Entre Rios', 0, 0, 1390, 1727, 0, NULL, NULL, 1),
(570, 41, 'SAN JOSE Dia Termal - Almuerzo sin bebida + Spa', 'SJO', 'Villa San Jose, Entre Rios', 0, 0, 1780, 2212, 0, NULL, NULL, 1),
(571, 8, 'WHITESNAKE - Malvinas Argentinas', 'MAL', 'Warnes y Av. Chorroarin - FRENTE A EASY - Paternal', 0, 0, 240, 290, 0, NULL, NULL, 1),
(572, 8, 'FESTIVAL BUE - Tecnopolis', 'TEC', 'General Paz y Constituyentes - Villa Martelli', 0, 0, 300, 370, 0, NULL, NULL, 1),
(573, 8, 'GUNS N ROSES/THE WHO - Estadio Unico de La Plata', 'PLA', 'Av. 25 y 37- PLAZA ALBERTI -', 0, 0, 350, 420, 0, NULL, NULL, 1),
(574, 8, 'RICARDO ARJONA - Directv Arena', 'ARE', 'Olivos 3215, Panamericana km 35,5 - Tortuguitas', 0, 0, 350, 420, 0, NULL, NULL, 1),
(575, 8, 'SOY LUNA - Tecnopolis', 'TEC', 'General Paz y Constituyentes - Villa Martelli', 0, 0, 270, 340, 0, NULL, NULL, 1),
(577, 8, 'SMILE FESTIVAL - Costanera Sur ', 'COS', 'Juana Manso y Encarnacion Ezcurra - Puerto Madero', 0, 0, 240, 290, 0, NULL, NULL, 1),
(578, 8, 'SIN BANDERA - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 400, 500, 0, NULL, NULL, 1),
(579, 8, 'CARLOS VIVES - Hipodromo de Palermo', 'HIP', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 390, 490, 0, NULL, NULL, 1),
(580, 8, 'NO TE VA GUSTAR - Malvinas Argentinas', 'MAL', 'Warnes y Av. Chorroarin - FRENTE A EASY - Paternal', 0, 0, 240, 300, 0, NULL, NULL, 1),
(581, 8, 'TAAD - FINALES NACIONALES 2016 - VILLA BALLESTER ', 'TAD', 'MARQUEZ Y 9 DE JULIO, Villa Ballester', 0, 0, 300, 300, 1, '-34.5481706861487', '-58.582277297973576', 1),
(582, 8, 'HHI ARGENTINA - Soc. Alemana  Villa Ballester ', 'HHI', 'MARQUEZ Y 9 DE JULIO, Villa Ballester', 0, 0, 300, 300, 1, '-34.56107141773217', '-58.78539562225336', 1),
(583, 8, 'ROMEO SANTOS - Hipodromo de Palermo', 'HIP', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 390, 490, 0, NULL, NULL, 0),
(584, 40, 'HOTEL NOGARO - Silla 1ra Fila', 'NOG', 'Av. Libertad, Urdinarrain, Entre Ríos', 0, 0, 4450, 0, 0, NULL, NULL, 0),
(585, 40, 'HOTEL C.S.P.F.A - Silla 1ra Fila', 'CSP', 'Rocamora 219 - C. del Uruguay', 0, 0, 4450, 0, 0, NULL, NULL, 0),
(586, 40, 'HOTEL NOGARO - Feriado Carnavales Silla 1ra Fila ', 'NOG', 'Av. Libertad, Urdinarrain, Entre Ríos', 0, 0, 6850, 0, 0, NULL, NULL, 0),
(587, 40, 'HOTEL C.S.P.F.A -Feriado Carnavales Silla 1ra Fila', 'CSP', 'Rocamora 219 - C. del Uruguay', 0, 0, 6850, 0, 0, NULL, NULL, 0),
(588, 8, 'JUAN LUIS GUERRA - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 270, 340, 0, NULL, NULL, 0),
(590, 71, 'Traslado ida y vuelta FECHA REPROGRAMADA', 'REP', '', 0, 0, 1110, 1110, 0, NULL, NULL, 0),
(591, 71, 'Traslado ida y vuelta ', 'TRA', '', 0, 0, 0, 0, 0, NULL, NULL, 0),
(593, 8, 'KORN - Malvinas Argentinas', 'MAL', 'Warnes y Av. Chorroarin - FRENTE A EASY - Paterna', 0, 0, 270, 340, 0, NULL, NULL, 0),
(594, 32, 'HOTEL La Casona (Santa Rosa de Calamuchita)', 'CAS', 'RP228 108, Santa Rosa de Calamuchita, Córdoba', 0, 0, 4790, 5490, 0, NULL, NULL, 0),
(595, 8, 'PERSONAL FEST - Club Ciudad de Bs As', 'CLU', 'Av. Del Libertador y Crisologo Larralde ', 0, 0, 390, 490, 0, NULL, NULL, 0),
(596, 8, 'LA BERISO - Estadio Unico de La Plata', 'PLA', 'Av. 23 y 37 - COMPLEJO LAS PALMAS -', 0, 0, 440, 540, 0, NULL, NULL, 0),
(597, 8, 'CNCO - Hipodromo de Palermo', 'HIP', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 390, 490, 0, NULL, NULL, 0),
(598, 8, 'FOO FIGHTERS - Velez Sarfield', 'VEL', 'Juan B. Justo y Gral Paz - YPF', 0, 0, 330, 400, 0, NULL, NULL, 0),
(599, 8, 'KATY PERRY - Club Ciudad de Bs As', 'CLU', 'Av. Del Libertador y Crisologo Larralde ', 0, 0, 330, 400, 0, NULL, NULL, 0),
(600, 8, 'RADIOHEAD - Tecnopolis', 'TEC', 'General Paz y Constituyentes - Villa Martelli', 0, 0, 330, 400, 0, NULL, NULL, 0),
(601, 8, 'OZZY OSBOURNE - Obras ', 'OBR', 'Av. Del Libertador y Crisologo Larralde', 0, 0, 330, 400, 0, NULL, NULL, 0),
(602, 8, 'RICARDO ARJONA - Campo Argentino de Polo', 'CAM', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 390, 490, 0, NULL, NULL, 0),
(603, 8, 'OBRAS ', 'OBR', 'Av. Del Libertador y Crisologo Larralde ', 0, 0, 0, 0, 0, NULL, NULL, 0),
(604, 8, 'ABEL PINTOS - Obras', 'OBR', 'Av. Del Libertador y Crisologo Larralde ', 0, 0, 390, 490, 0, NULL, NULL, 1),
(605, 8, 'RESIDENTE - Hipodromo de Palermo', 'HIP', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 390, 490, 0, NULL, NULL, 1),
(606, 8, 'NO TE VA GUSTAR - Obras', 'OBR', 'Av. Del Libertador y Crisologo Larralde', 0, 0, 390, 490, 0, NULL, NULL, 1),
(607, 8, 'ED SHEERAN - Campo de Polo Argentino', 'CAM', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 400, 500, 0, NULL, NULL, 1),
(608, 8, 'LUIS MIGUEL - Campo de Polo Argentino', 'CAM', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 400, 500, 0, NULL, NULL, 0),
(609, 8, 'WE COLOR FESTIVAL - Pilar', 'PIL', 'PILAR KM 46,5 PANAMERICANA', 0, 0, 440, 540, 0, NULL, NULL, 1),
(610, 8, 'PAUL MCCARTNEY - Campo de Polo Argentino', 'CAM', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 400, 500, 0, NULL, NULL, 1),
(611, 41, 'TERMAS DE DOLORES', 'DOL', 'Termas de Dolores', 0, 0, 1345, 1672, 0, NULL, NULL, 1),
(612, 41, 'TERMAS DE DOLORES - Menores de 0 a 3 años', 'DOL', 'Termas de Dolores', 0, 0, 1100, 1367, 0, NULL, NULL, 1),
(613, 53, 'NATURALEZA VIVA', 'VIV', '', 0, 0, 1355, 1684, 0, NULL, NULL, 1),
(614, 53, 'NATURALEZA VIVA - (Menor de 4 a 9 años )', 'VIV', '', 0, 0, 1135, 1411, 0, NULL, NULL, 0),
(615, 53, 'NATURALEZA VIVA - (Menor de 0 a 3 años )', 'VIV', '', 0, 0, 515, 640, 0, NULL, NULL, 1),
(616, 8, 'WISIN Y YANDEL - Geba', 'GEB', 'Av. Libertador y Av. Dorrego - CAMPO HIPICO -', 0, 0, 400, 500, 0, NULL, NULL, 0),
(617, 71, 'Traslado ida y vuelta FECHA REPROGRAMADA Termas', 'REP', '', 0, 0, 1350, 1350, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_destinations`
--

CREATE TABLE `type_destinations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `type_destinations`
--

INSERT INTO `type_destinations` (`id`, `name`) VALUES
(1, 'Punto a Punto'),
(2, 'Puerta a Puerta'),
(3, 'Carnaval'),
(4, 'Paquetes'),
(5, 'Día Completo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_subaccount`
--

CREATE TABLE `type_subaccount` (
  `id` int(11) NOT NULL,
  `name` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `type_subaccount`
--

INSERT INTO `type_subaccount` (`id`, `name`) VALUES
(1, 'SITTNET'),
(2, 'BUQUEBUS'),
(3, 'AEREOS'),
(4, 'MINIBUS'),
(5, 'AIV.TUR'),
(6, 'DESPEGAR');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2D3343C3C54C8C93` (`type_id`);

--
-- Indices de la tabla `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Indices de la tabla `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7332E169A9FA940B` (`categoryid_id`),
  ADD KEY `IDX_7332E16956A273CC` (`origin_id`),
  ADD KEY `IDX_7332E169816C6140` (`destination_id`),
  ADD KEY `IDX_7332E169D74B266E` (`service_sub_account_type_id`);

--
-- Indices de la tabla `stops`
--
ALTER TABLE `stops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_39B58FA4816C6140` (`destination_id`);

--
-- Indices de la tabla `type_destinations`
--
ALTER TABLE `type_destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_subaccount`
--
ALTER TABLE `type_subaccount`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `stops`
--
ALTER TABLE `stops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=620;

--
-- AUTO_INCREMENT de la tabla `type_destinations`
--
ALTER TABLE `type_destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `type_subaccount`
--
ALTER TABLE `type_subaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `destinations`
--
ALTER TABLE `destinations`
  ADD CONSTRAINT `FK_2D3343C3C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type_destinations` (`id`);

--
-- Filtros para la tabla `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `FK_7332E16956A273CC` FOREIGN KEY (`origin_id`) REFERENCES `destinations` (`id`),
  ADD CONSTRAINT `FK_7332E169816C6140` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`),
  ADD CONSTRAINT `FK_7332E169A9FA940B` FOREIGN KEY (`categoryid_id`) REFERENCES `type_destinations` (`id`),
  ADD CONSTRAINT `FK_7332E169D74B266E` FOREIGN KEY (`service_sub_account_type_id`) REFERENCES `type_subaccount` (`id`);

--
-- Filtros para la tabla `stops`
--
ALTER TABLE `stops`
  ADD CONSTRAINT `FK_39B58FA4816C6140` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
