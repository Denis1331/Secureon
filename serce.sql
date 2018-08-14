-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 14 2018 г., 09:14
-- Версия сервера: 5.7.11-log
-- Версия PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `serce`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mac_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `phone`, `email`, `ip_address`, `mac_address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'qewqwe', 123, 'qdwsdwq', '111.111.111.111', 'e4:R4:u7:6t:5r', NULL, '2018-08-11 13:43:29', '2018-08-11 13:43:29'),
(2, 'Денис', 123, 'esrgserg@grg.ngf', '111.111.111.111', 'e4:R4:u7:6t:5r', NULL, '2018-08-11 13:45:08', '2018-08-11 13:45:08'),
(3, 'Ukraine', 12452, 'Denis@mail.ru', '111.111.111.111', 'e4:R4:u7:6t:5r', NULL, '2018-08-13 08:37:13', '2018-08-13 08:37:13'),
(8, 'Денис', 123, 'asdesrgserg@grg.ngf', '111.111.111.111', 'e4:R4:u7:6t:5r', NULL, '2018-08-14 02:16:13', '2018-08-14 02:16:13'),
(9, 'Денис', 123, 'dasd@mail.ru', '111.111.111.111', 'e4:R4:u7:6t:5r', NULL, '2018-08-14 02:16:55', '2018-08-14 02:16:55'),
(10, 'Денис', 123, 'asddas@mail.ru', '151.15.16.161', 'e4:F4:u7:6t:5r', NULL, '2018-08-14 02:24:17', '2018-08-14 02:24:17'),
(11, 'Денис', 123, 'asdads@grg.ngf', '111.111.111.111', 'e4:R4:u7:6t:5r', NULL, '2018-08-14 02:30:27', '2018-08-14 02:30:27'),
(12, 'Test', 673465, 'test@mail.com', '111.111.111.131', 'Z4:R4:u7:6t:5r', NULL, '2018-08-14 02:33:13', '2018-08-14 02:33:13'),
(13, 'Денис', 123, 'afsadsd@mail.ru', '111.111.111.111', 'e4:R4:u7:6t:5r', NULL, '2018-08-14 02:33:53', '2018-08-14 02:33:53'),
(14, 'New', 12452, 'asfasf@mail.ru', '111.111.111.111', 'e4:R4:u7:6t:5r', NULL, '2018-08-14 02:36:12', '2018-08-14 02:36:12'),
(15, 'Last', 968761603, 'Last@mail.ru', '111.111.111.111', 'e4:R4:u7:6t:5r', NULL, '2018-08-14 03:05:05', '2018-08-14 03:05:05'),
(16, 'Really last', 123, 'Rlast@mail.ru', '111.111.111.111', 'e4:R4:u7:6t:5r', NULL, '2018-08-14 03:06:20', '2018-08-14 03:06:20'),
(17, 'Денис', 123, 'eagsgagassrgserg@grg.ngf', '111.111.111.111', 'e4:R4:u7:6t:5r', NULL, '2018-08-14 03:07:00', '2018-08-14 03:07:00');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_11_122903_create_client_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
