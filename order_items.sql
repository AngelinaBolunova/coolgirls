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
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `category`, `name`, `image_path`, `quantity`, `price`) VALUES
(2, 9, 3, '', 'Широкие розовые брюки в клетку', 'брюки\\3b.jpg', 1, '2800.00'),
(3, 10, 2, '', 'Бордовая кофта с бантами', 'кофты\\2k.jpg', 4, '2700.00'),
(4, 11, 3, '', 'Розовая вязанная кофта ', 'кофты\\3k.jpg', 2, '2000.00'),
(5, 12, 2, '', 'Яркие брюки желтого цвета', 'брюки\\2b.jpg', 2, '2400.00'),
(22, 29, 3, 'bryuki', 'Широкие розовые брюки в клетку', 'брюки\\3b.jpg', 1, '2800.00'),
(23, 30, 3, 'bryuki', 'Широкие розовые брюки в клетку', 'брюки\\3b.jpg', 1, '2800.00'),
(25, 32, 5, 'futbolki', 'Футболка \"Strawberry\"', 'футболки\\5f.jpg', 1, '1370.00'),
(26, 33, 3, 'futbolki', 'Футболка \"Horror Movies\"', 'футболки\\3f.jpg', 1, '1650.00'),
(27, 34, 1, 'futbolki', 'Футболка \"Cute citten\"', 'футболки/1f.jpg', 2, '1500.00'),
(28, 35, 2, 'futbolki', 'Футболка \"NewYork\"', 'футболки/2f.jpg', 2, '1700.00'),
(29, 36, 3, 'futbolki', 'Футболка \"Horror Movies\"', 'футболки\\3f.jpg', 3, '1650.00'),
(30, 37, 3, 'futbolki', 'Футболка \"Horror Movies\"', 'футболки\\3f.jpg', 1, '1650.00'),
(31, 38, 3, 'futbolki', 'Футболка \"Horror Movies\"', 'футболки\\3f.jpg', 1, '1650.00'),
(32, 39, 1, 'kofty', 'Голубая нежная кофта-топ             ', 'кофты\\1k.jpg', 1, '2500.00'),
(33, 40, 3, 'kofty', 'Розовая вязанная кофта ', 'кофты\\3k.jpg', 1, '2000.00'),
(34, 40, 1, 'futbolki', 'Футболка \"Cute citten\"', 'футболки/1f.jpg', 1, '1500.00'),
(35, 41, 1, 'futbolki', 'Футболка \"Cute citten\"', 'футболки/1f.jpg', 1, '1500.00'),
(36, 42, 3, 'futbolki', 'Футболка \"Horror Movies\"', 'футболки\\3f.jpg', 1, '1650.00'),
(37, 42, 1, 'kofty', 'Голубая нежная кофта-топ             ', 'кофты\\1k.jpg', 1, '2500.00'),
(38, 43, 1, 'futbolki', 'Футболка \"Cute citten\"', 'футболки/1f.jpg', 1, '1500.00'),
(39, 44, 3, 'kofty', 'Розовая вязанная кофта ', 'кофты\\3k.jpg', 1, '2000.00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
