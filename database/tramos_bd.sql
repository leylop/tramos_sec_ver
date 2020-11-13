-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2020 a las 20:36:22
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tramos_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canales`
--

CREATE TABLE `canales` (
  `id` int(10) UNSIGNED NOT NULL,
  `num_canal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `canales`
--

INSERT INTO `canales` (`id`, `num_canal`, `nombre`) VALUES
(1, '60', ''),
(2, '61', ''),
(3, '62', ''),
(4, '63', ''),
(5, '64', ''),
(6, '65', ''),
(7, '66', ''),
(8, '67', ''),
(9, '68', ''),
(10, '69', ''),
(11, '70', ''),
(12, '71', ''),
(13, '72', ''),
(14, '73', ''),
(15, '74', ''),
(16, '75', 'Pagos en efectivo'),
(17, '76', ''),
(18, '77', ''),
(19, '60', ''),
(20, '61', ''),
(21, '62', ''),
(22, '63', ''),
(23, '64', ''),
(24, '65', ''),
(25, '66', ''),
(26, '67', ''),
(27, '68', ''),
(28, '69', ''),
(29, '70', ''),
(30, '71', ''),
(31, '72', ''),
(32, '73', ''),
(33, '74', ''),
(34, '75', ''),
(35, '76', ''),
(36, '77', ''),
(37, '60', ''),
(38, '61', ''),
(39, '62', ''),
(40, '63', ''),
(41, '64', ''),
(42, '65', ''),
(43, '66', ''),
(44, '67', ''),
(45, '68', ''),
(46, '69', ''),
(47, '70', ''),
(48, '71', ''),
(49, '72', ''),
(50, '73', ''),
(51, '74', ''),
(52, '75', ''),
(53, '76', ''),
(54, '77', ''),
(55, '60', ''),
(56, '61', ''),
(57, '62', ''),
(58, '63', ''),
(59, '64', ''),
(60, '65', ''),
(61, '66', ''),
(62, '67', ''),
(63, '68', ''),
(64, '69', ''),
(65, '70', ''),
(66, '71', ''),
(67, '72', ''),
(68, '73', ''),
(69, '74', ''),
(70, '75', ''),
(71, '76', ''),
(72, '77', ''),
(73, '60', ''),
(74, '61', ''),
(75, '75', 'Pagos en efectivo'),
(76, '63', ''),
(77, '64', ''),
(78, '65', ''),
(79, '66', ''),
(80, '67', ''),
(81, '68', ''),
(82, '69', ''),
(83, '70', ''),
(84, '71', ''),
(85, '72', ''),
(86, '73', ''),
(87, '74', ''),
(88, '75', ''),
(89, '76', ''),
(90, '77', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

CREATE TABLE `destinos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmacion` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `destinos`
--

INSERT INTO `destinos` (`id`, `nombre`, `confirmacion`) VALUES
(1, 'Corresponsal no bancario', 1),
(2, 'Corresponsal no bancario', 0),
(3, 'ATH', 1),
(4, 'Corresponsal no bancario', 1),
(5, 'ATH', 1),
(6, 'Corresponsal no bancario', 1),
(7, 'ATH', 1),
(8, 'Corresponsal no bancario', 1),
(9, 'ATH', 1),
(10, 'ATH', 1),
(11, 'Corresponsal no bancario', 1),
(12, 'ATH', 1),
(13, 'Corresponsal no bancario', 1),
(14, 'ATH', 1),
(15, 'Corresponsal no bancario', 1),
(16, 'ATH', 1),
(17, 'Corresponsal no bancario', 0),
(18, 'ATH', 0),
(19, 'ATH', 0),
(20, 'Corresponsal no bancario', 0),
(21, 'ATH', 0),
(22, 'ATH', 0),
(23, 'Corresponsal no bancario', 0),
(24, 'ATH', 0),
(25, 'ATH', 0),
(26, 'ATH', 1),
(27, 'Corresponsal no bancario', 0),
(28, 'ATH', 0),
(29, 'ATH', 1),
(30, 'Corresponsal no bancario', 0),
(31, 'ATH', 0),
(32, 'ATH', 1),
(33, 'Corresponsal no bancario', 0),
(34, 'ATH', 0),
(35, 'ATH', 1),
(36, 'Corresponsal no bancario', 0),
(37, 'ATH', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_11_02_232950_create_canales_table', 1),
(8, '2020_11_02_232950_create_destinos_table', 1),
(9, '2020_11_02_232950_create_operaciones_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operaciones`
--

CREATE TABLE `operaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cod_operacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `operaciones`
--

INSERT INTO `operaciones` (`id`, `nombre`, `descripcion`, `cod_operacion`) VALUES
(1, 'CreateMultimodeCollection', 'Recaudo de Servicios Publicos', 'PS008'),
(2, 'CreateTransaction', 'Deposito', 'J070'),
(3, 'CreateTransaction', 'Retiro', 'J074');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `petition_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation_id` int(10) UNSIGNED NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `corresponsal_id` int(10) UNSIGNED NOT NULL,
  `canal_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `transactions`
--

INSERT INTO `transactions` (`id`, `petition_id`, `operation_id`, `created_at`, `updated_at`, `origin`, `corresponsal_id`, `canal_id`, `status`, `destination_id`) VALUES
(1, 'V8H936ELHWXUX4', 2, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Exitosa', 12),
(2, 'JN9PACCS2RP3VD', 2, '2020-10-01', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Rechazada', 3),
(3, 'RYYBK25STQUAL9', 3, '2020-10-05', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Exitosa', 1),
(4, 'HMQ2TSUNAE24UM', 3, '2020-10-01', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Exitosa', 3),
(5, 'LA5YWQZJYSRG9L', 3, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Rechazada', 3),
(6, 'NNP4LCTKC6UXBZ', 2, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Exitosa', 3),
(7, '8NPH29YFQ4XVNZ', 1, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Rechazada', 2),
(8, 'EL4Q8JN5AUF36J', 1, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 3, 75, 'Rechazada', 2),
(9, '3ATU5SA3LS65DY', 1, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 3, 75, 'Rechazada', 5),
(10, 'HGUAT64X4N92ME', 3, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 1, 75, 'Rechazada', 5),
(11, 'Y6J99NSTBW8H8P', 2, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 1, 75, 'Exitosa', 6),
(12, 'SZMTC6YSJT74T7', 2, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 1, 75, 'Exitosa', 6),
(13, '475QFBW4QFKNFD', 3, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 1, 75, 'Exitosa', 7),
(14, 'KMAJCLEWD7W97H', 1, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Exitosa', 7),
(15, 'KX6XFN434XA6BL', 1, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Exitosa', 8),
(16, 'JY9A3SZVAWWCW9', 1, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Rechazada', 8),
(17, 'KWXQQHQ5GQPQW6', 2, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Rechazada', 9),
(18, 'PF3WJ8R5A9NNZT', 2, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 3, 75, 'Rechazada', 9),
(19, 'GSH9C7UZNPQWV8', 2, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 3, 75, 'Rechazada', 10),
(20, 'GN9VNFW64UL9V5', 1, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 3, 75, 'Rechazada', 10),
(21, 'SS8GKDYX6KP3D5', 1, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 3, 75, 'Exitosa', 11),
(22, 'AE44F5L6U8UTS3', 3, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 3, 75, 'Exitosa', 11),
(23, 'AADKNESHBAZFKR', 3, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Exitosa', 12),
(24, 'V8H936ELHWXUX4', 2, '2020-11-01', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Exitosa', 12),
(25, 'JN9PACCS2RP3AA', 2, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Rechazada', 3),
(26, 'RYYBK25STQUAA9', 3, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Exitosa', 3),
(27, 'HMQ2TSUNAE56UM', 3, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Exitosa', 3),
(28, 'LA5YWQZJYRTA9L', 3, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Rechazada', 3),
(29, 'NNP4LCTKC6UXBZ', 2, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Exitosa', 3),
(30, '8OPI29YFQ4XVNZ', 1, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Rechazada', 2),
(31, 'QYW6JN5AUF36J', 1, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 3, 75, 'Rechazada', 2),
(32, '3ATU5SA3LS65DY', 1, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 3, 75, 'Rechazada', 5),
(33, 'HGUAT64X4N98QE', 3, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 1, 75, 'Rechazada', 5),
(34, 'Y6J99NWYQU8H8P', 2, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 1, 75, 'Exitosa', 6),
(35, 'SZMTC6TWJT74T7', 2, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 1, 75, 'Exitosa', 6),
(36, '475DWDBW4QFKNFD', 3, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 1, 75, 'Exitosa', 7),
(37, 'KMAJCWEWD7W97H', 1, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Exitosa', 7),
(38, 'KX6XFN4EWXA6BL', 1, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Exitosa', 8),
(39, 'JY9A3ASSAWWCW9', 1, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Rechazada', 1),
(40, 'KLOPQQHQ5GQPQW6', 2, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Rechazada', 9),
(41, 'PF3WJ8RL39NNZT', 2, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 3, 75, 'Rechazada', 9),
(42, 'GSH9C1DZNPQWV8', 2, '2020-11-02', '0000-00-00 00:00:00', 'Bo', 3, 75, 'Rechazada', 10),
(43, 'GN9VY3LW64UL9V5', 1, '2020-11-03', '0000-00-00 00:00:00', 'Bo', 3, 75, 'Rechazada', 10),
(44, 'SS8GK21X6KP3D5', 1, '2020-11-03', '0000-00-00 00:00:00', 'Bo', 3, 75, 'Exitosa', 11),
(45, 'AE44FR318UTS3', 3, '2020-11-03', '0000-00-00 00:00:00', 'Bo', 3, 75, 'Exitosa', 11),
(46, 'AADKNESHN4KR', 3, '2020-11-03', '0000-00-00 00:00:00', 'Bo', 2, 75, 'Exitosa', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'leidy lopez', 'llopezlope4@uniminuto.edu.co', NULL, '$2y$10$mfSR65sJYZasCIyVrFYgfu8gayKnxbY75Lr3APISrO8ERyy9a1HuG', NULL, '2020-11-08 21:53:04', '2020-11-08 21:53:04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canales`
--
ALTER TABLE `canales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `destinos`
--
ALTER TABLE `destinos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `canales`
--
ALTER TABLE `canales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `destinos`
--
ALTER TABLE `destinos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
