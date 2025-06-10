-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 10 2025 г., 12:55
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
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `session_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'В корзине',
  `added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`id`, `session_id`, `product_id`, `category`, `name`, `image_path`, `quantity`, `status`, `added_at`) VALUES
(9, '7v6ro0p5862rhj1g3oif1p0pvamsg2a2', 2, 'kofty', 'Бордовая кофта с бантами', 'кофты\\2k.jpg', 1, 'Доставлен', '2025-05-13 08:52:14'),
(10, '7v6ro0p5862rhj1g3oif1p0pvamsg2a2', 4, 'kofty', 'Бордовая кофта- свитер', 'кофты\\4k.jpg', 1, 'Отправлен', '2025-05-13 08:52:18'),
(41, 'b67e3vaiq33be0oj3l8up9l5l2t5mq69', 3, 'kofty', 'Розовая вязанная кофта ', 'кофты\\3k.jpg', 3, 'В корзине', '2025-05-20 08:14:22'),
(43, 'b67e3vaiq33be0oj3l8up9l5l2t5mq69', 4, 'kofty', 'Бордовая кофта- свитер', 'кофты\\4k.jpg', 1, 'В корзине', '2025-05-20 08:20:17'),
(47, 'ct71o9ijs1eeag6sauhuisg6oktrh601', 3, 'kofty', 'Розовая вязанная кофта ', 'кофты\\3k.jpg', 3, 'В корзине', '2025-06-04 07:44:27'),
(48, 'ct71o9ijs1eeag6sauhuisg6oktrh601', 1, 'futbolki', 'Футболка \"Cute citten\"', 'футболки/1f.jpg', 1, 'В корзине', '2025-06-04 07:56:24'),
(49, 'ct71o9ijs1eeag6sauhuisg6oktrh601', 2, 'futbolki', 'Футболка \"NewYork\"', 'футболки/2f.jpg', 1, 'В корзине', '2025-06-04 08:10:07'),
(50, '7mpmahhihteb0ev9sk6s7r7jcsjtssuv', 3, 'kofty', 'Розовая вязанная кофта ', 'кофты\\3k.jpg', 1, 'В корзине', '2025-06-04 08:10:50');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
