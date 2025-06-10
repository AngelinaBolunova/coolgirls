-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 10 2025 г., 12:56
-- Версия сервера: 8.0.19
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `girlfeeria`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Новый',
  `total_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_date`, `status`, `total_amount`) VALUES
(9, 1, '2025-06-06 18:58:38', 'Новый', '2800.00'),
(10, 1, '2025-06-06 19:06:11', 'Отменен', '10800.00'),
(11, 1, '2025-06-06 19:11:15', 'Новый', '4000.00'),
(12, 1, '2025-06-06 19:12:55', 'Новый', '4800.00'),
(29, 1, '2025-06-06 19:17:33', 'Новый', '2800.00'),
(30, 1, '2025-06-06 19:17:46', 'Новый', '2800.00'),
(32, 1, '2025-06-06 19:18:08', 'Новый', '1370.00'),
(33, 1, '2025-06-06 19:19:26', 'Новый', '1650.00'),
(34, 1, '2025-06-06 19:19:33', 'Новый', '3000.00'),
(35, 1, '2025-06-06 19:20:51', 'Новый', '3400.00'),
(36, 1, '2025-06-06 19:22:27', 'Новый', '4950.00'),
(37, 1, '2025-06-06 19:22:39', 'Новый', '1650.00'),
(38, 1, '2025-06-06 19:22:55', 'Новый', '1650.00'),
(39, 2, '2025-06-06 19:34:42', 'Отправлен', '2500.00'),
(40, 3, '2025-06-08 15:16:55', 'Новый', '3500.00'),
(41, 4, '2025-06-09 18:20:00', 'Новый', '1500.00'),
(42, 4, '2025-06-09 18:27:44', 'Новый', '4150.00'),
(43, 4, '2025-06-09 18:28:49', 'Новый', '1500.00'),
(44, 4, '2025-06-10 09:29:53', 'Новый', '2000.00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
