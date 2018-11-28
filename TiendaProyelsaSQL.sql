-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2018 a las 06:11:02
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_citas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `color`) VALUES
(3, 'eaton', 'eaton', 'Productos EATON', '#6092f6'),
(4, 'schneider', 'schneider', 'Productos schneider-electric', '#13b438'),
(5, 'Allen Bradley', 'allen-bradley', 'Productos Allen Bradley', '#0e12dd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_07_01_095505_create_categories_table', 1),
('2015_07_01_095519_create_products_table', 1),
('2015_08_23_202538_create_orders_table', 1),
('2015_08_23_202546_create_order_items_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `shipping` decimal(10,2) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `extract` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `image` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `extract`, `price`, `image`, `visible`, `category_id`, `created_at`, `updated_at`) VALUES
(9, 'Arrancadores a Tensión Plena No Reversible', 'arrancadores-a-tension-plena-no-reversible', 'Los arrancadores manuales de motores B100 se pueden utilizar en aplicaciones monofásicas clasificadas para 3 HP a 240 VAC o 2 HP a 230 VDC. También pueden ser clasificados para aplicaciones trifásicas de hasta 10 HP a 600 VAC. El arrancador manual A302 es un arrancador y protector manual del motor trifásico con un mecanismo de disparo bimetálico por sobrecarga regulable e instantáneo magnético de cortocircuito. Pueden ser cableados en el campo para aplicaciones de motores monofásicos mediante la conexión de los 3 polos en serie. ', 'Los arrancadores manuales de motores B100 se pueden utilizar en aplicaciones monofásicas clasificadas para 3 HP a 240 VAC o 2 HP a 230 VDC', '700.00', '\\img\\pct_359969.jpg', 1, 3, '2018-11-22 07:27:22', '2018-11-22 07:27:22'),
(10, 'Arrancadores Suaves', 'arrancadores-suaves', 'La línea S811+ de arrancadores suaves, compacta y fácil de programar y de instalar, es ideal para aplicaciones abiertas, cerradas y de centros de control motor. El S811+ ofrece un módulo de interfaz digital (DIM) fácil de utilizar, que permite a los usuarios modificar los parámetros de control, activar/desactivar protecciones, fijar variables de comunicación, monitorear parámetros del sistema como voltajes y corrientes de línea y acceder a la cola de fallas. ', 'arrancadores-suaves', '700.00', '\\img\\pct_377612.jpg', 1, 3, '2018-11-28 07:07:00', '2018-11-28 07:07:00'),
(11, 'Centro de Control de Motores CCM Baja Tensión', 'centro-de-control-de-motores-ccm-baja-tension', 'Los centros de control motor (Motor Control Centres, MCC) FlashGard de Eaton aprovechan las funciones y los beneficios del MCC Freidor 2100 al agregar Rotonda, un moderno mecanismo patentado de estante de barra de conexión que proporciona funciones de aislamiento de barra colectora, indicación enchufable y de bloqueo que evitan de manera activa el inicio de arcos eléctricos. Están diseñados para aplicaciones trifásicas de 230 V de hasta 300 HP o aplicaciones trifásicas de 480 V de hasta 600 HP.', 'CCM Baja Tensión', '999.99', '\\img\\pct_367268.jpg', 1, 3, '2018-11-28 07:09:27', '2018-11-28 07:09:27'),
(12, 'Centro de Control de Motores CCM Media Tensión', 'centro-de-control-de-motores-ccm-media-tension', 'Los variadores de frecuencia de media tensión combinan tecnología innovadora con construcción y diseño confiables, flexibilidad del sistema y facilidad de uso. ', 'CCM Media Tensión', '999.99', '\\img\\pct_199510.jpg', 1, 3, '2018-11-28 07:11:28', '2018-11-28 07:11:28'),
(13, 'Contactores de Alumbrado', 'contactores-de-alumbrado', 'Los Contactores de iluminación de Eaton’ están diseñados para proporcionar un medio seguro y conveniente para la conmutación local o remota de cargas de lámparas de tungsteno (filamento incandescente) o balasto (fluorescente y arco de mercurio). También son adecuados para otras cargas como cargas de lámparas de sodio de baja presión y de alta presión y cargas no motores (resistivas). Nuestros contactores de iluminación ofrecen una versatilidad sin precedentes en cuanto a aplicación, sencillez de configuración y rendimiento operativo. \r\nCaracterísticas', 'Los Contactores de iluminación de Eaton’ están diseñados para proporcionar un medio seguro y conveniente para la conmutación local o remota', '999.99', '\\img\\pct_359938.jpg', 1, 3, '2018-11-28 07:12:28', '2018-11-28 07:12:28'),
(14, 'Comunicación (PLC´s) ', 'comunicacion-plcs', 'Los Controladores modulares ELC tienen menos de la mitad del tamaño de la mayoría de los controladores lógicos programables. Los Módulos digitales de ampliación de E/S de ELC proporcionan la cantidad y el tipo de E/S correctos para soluciones de aplicaciones. Elija 4, 8 o 16 E/S con diferentes combinaciones de entrada de AC y DC y de salida de relé y transistor. Es posible añadir cualquier cantidad de módulos de expansión para crear hasta 256 E/S. También se ofrecen módulos especializados como entrada analógica, salida analógica y de temperatura de platino. ', 'Los Controladores modulares ELC tienen menos de la mitad del tamaño de la mayoría de los controladores lógicos programables.', '999.99', '\\img\\pct_361377.jpg', 1, 3, '2018-11-28 07:13:32', '2018-11-28 07:13:32'),
(15, 'Interfaces de Operador (PC\'s Industriales)', 'interfaces-de-operador-pcs-industriales', 'Las Series XV y XP de interfaces del operador de Eaton ofrecen plataformas de alto rendimiento que proporcionan una flexibilidad sin igual. Ofrece diseño delgado OEM, una variedad de opciones de puertos de comunicación que incluyen Ethernet integrado en todos los modelos, tamaños de pantalla desde 3.5 hasta 15 pulgadas, software Visual Designer y mucho más.', 'Las Series XV y XP de interfaces del operador de Eaton ofrecen plataformas de alto rendimiento que proporcionan una flexibilidad sin igual.', '999.99', '\\img\\pct_1177696.jpg', 1, 3, '2018-11-28 07:14:51', '2018-11-28 07:14:51'),
(16, 'Variadores de Velocidad ', 'variadores-de-velocidad', 'Los variadores SVX9000 de Eaton ofrecen una tecnología de control vectorial sin sensor, sumada a un modelo de motor adaptativo y sofisticadas características de circuito ASIC. Esta tecnología permite el error de velocidad constante, rápido tiempo de subida del par, alta inmunidad a las vibraciones de resonancia y valores elevados de par y corriente de arranque. El SVX9000 es adecuado para sistemas de impulso de múltiples motores y aplicaciones de alta velocidad.', 'Los variadores de frecuencia ajustable (también conocidos como variadores de frecuencia) ajustan la velocidad de un motor para concordar perfectamente con los requisitos de salida, lo que resulta en un ahorro de energía típico del 10 al 50 por ciento.', '999.99', '\\img\\pct_362202.jpg', 1, 3, '2018-11-28 07:16:13', '2018-11-28 07:16:13'),
(17, 'Interruptor diferencial Acti iID', 'interruptor-diferencial-acti-iid', 'Interruptores de protección diferencial de carril DIN Acti 9 de hasta 100 A\r\n', 'Interruptor diferencial hasta 125 A', '999.99', '\\img\\7559_main_web.jpg', 1, 4, '2018-11-28 07:17:50', '2018-11-28 07:17:50'),
(18, 'Interruptores Acti 9 ', 'interruptores-acti-9', 'Interruptor automático en conformidad con las normas UL, CSA e IEC de hasta 63 A', 'Interruptores IEC Acti 9', '999.99', '\\img\\PB116666_web.jpg', 1, 4, '2018-11-28 07:19:13', '2018-11-28 07:19:13'),
(19, 'Interruptores en caja moldeada Powerpact Marco H', 'interruptores-en-caja-moldeada-powerpact-marco-h', 'Interruptores de cada moldeada Powerpact H de 15 a 150A\r\n', 'Interruptores de caja moldeada Powerpact H', '999.99', '\\img\\60181_web.jpg', 1, 4, '2018-11-28 07:21:03', '2018-11-28 07:21:03'),
(20, 'Interruptores de caja moldeada Powerpact marco R', 'interruptores-de-caja-moldeada-powerpact-marco-r', 'Interruptores de caja moldeada Powerpact marco R Square D de 240 a 3000 A', 'Interruptores de caja moldeada Powerpact marco R Square D', '999.99', '\\img\\1855_web.jpg', 1, 4, '2018-11-28 07:22:08', '2018-11-28 07:22:08'),
(21, 'Centro de datos y alimentación trifásica Galaxy VM', 'centro-de-datos-y-alimentacion-trifasica-galaxy-vm', 'Protección de energía trifásica de gran eficiencia, fácil de implementar, que se integra sin inconvenientes con los entornos eléctricos, físicos y de monitoreo de clientes que operan aplicaciones industriales, de servicios y centros de datos medianos.', 'Socio de confianza para la continuidad de los negocios', '999.99', '\\img\\APC-EWAR-98SQF9_01_web.jpg', 1, 4, '2018-11-28 07:23:40', '2018-11-28 07:23:40'),
(22, 'Tableros eléctricos de Media Tensión SM6-24', 'tableros-electricos-de-media-tension-sm6-24', 'Amplia gama compuesta de unidades modulares de equipos de distribución y de control de hasta 24 kV con recinto metálico, fácilmente adaptable a sus requerimientos específicos\r\ncuenta con interruptores automáticos que utilizan tecnología de interrupción SF6 o por vacío, conmutador-disyuntor, contactor y disyuntor\r\ncorriente nominal de 630 y 1.250 A\r\ncorriente de cortocircuito de hasta 25 kA\r\nPuerto de protección contra arcos internos, dispositivos de supervisión y protección: brindan protección a sus instalaciones, continuidad del suministro eléctrico y reducen el tiempo de inactividad\r\nRelés Sepam y VIP\r\nInterfaz de telecontrol Easergy T200S\r\nDetector de fallas especial', 'Unidades modulares de hasta 24 kV', '999.99', '\\img\\970_MAIN_IMAGE_web.jpg', 1, 4, '2018-11-28 07:25:13', '2018-11-28 07:25:13'),
(23, 'Arrancadores de motor y componentes de protección PZ4', 'arrancadores-de-motor-y-componentes-de-proteccion-pz4', 'Esta solución resistente al arco brinda la fiabilidad y durabilidad de los interruptores Masterpact NW con una nueva combinación de características de reducción de falla de arco, brindando protección superior sin incrementar la huella de carbono de tu equipo.', 'Esta solución resistente al arco brinda la fiabilidad y durabilidad de los interruptores Masterpact NW con una nueva combinación de características de reducción de falla de arco.', '999.99', '\\img\\62141_web.jpg', 1, 4, '2018-11-28 07:26:30', '2018-11-28 07:26:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('user','admin') COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `user`, `password`, `type`, `active`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Oved', 'FiSo', 'ovedfs@gmail.com', 'ovedfs', '$2y$10$sUkamSL6I4DrXVlx3DSVeuHtl45OmOxK4JuR.bZl5CxvDAtRA5wc2', 'admin', 1, 'San Cosme 290, Cuauhtemoc, D.F.', 'byUSeqSolsj0hFwxWZBRl9xZsvSKunUTqiWqQHQv3J0N0YHbPkF2ZQjnEhKw', '2018-11-22 01:34:50', '2018-11-28 07:03:19'),
(3, 'Eduardo', 'Velacio', 'velacio@outlook.com', 'EVelacio', '$2y$10$sUkamSL6I4DrXVlx3DSVeuHtl45OmOxK4JuR.bZl5CxvDAtRA5wc2', 'admin', 1, 'admin', NULL, '2018-11-23 12:58:52', '2018-11-23 12:58:52'),
(4, 'Proyelsa', 'proyelsa', 'proyelsa@yahoo.com.mx', 'AdminProyelsa', '$2y$10$sUkamSL6I4DrXVlx3DSVeuHtl45OmOxK4JuR.bZl5CxvDAtRA5wc2', 'admin', 1, '', '7UZ85UHzQzBAcM4RZjWK3q2FS8XXcyKjofUbKLI29dQU3Bx6U5M3Kr0KzzGd', '2018-11-28 06:59:33', '2018-11-28 08:12:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_user_unique` (`user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
