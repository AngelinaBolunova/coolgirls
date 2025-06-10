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
-- Структура таблицы `kofty`
--

CREATE TABLE `kofty` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'не указан',
  `quantity` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `kofty`
--

INSERT INTO `kofty` (`id`, `name`, `price`, `image_path`, `description`, `color`, `quantity`) VALUES
(1, 'Голубая нежная кофта-топ             ', '2500.00', 'кофты\\1k.jpg', 'Нежная голубая кофта-топ. Это идеальное сочетание комфорта и стиля. Легкая ткань, приятный оттенок и утонченный дизайн создают романтичный образ. Прекрасно дополнит ваш летний гардероб.', 'Голубой', 38),
(2, 'Бордовая кофта с бантами', '2700.00', 'кофты\\2k.jpg', 'Изысканная бордовая вязанная кофта-майка с очаровательными бантиками на рукавах. Идеальное сочетание стиля и комфорта. Мягкая пряжа,глубокий цвет и кокетливые детали создают неповторимый образ для прохладных летних вечеров.', 'Бордовый', 20),
(3, 'Розовая вязанная кофта ', '2000.00', 'кофты\\3k.jpg', 'Очаровательная, мягкая и уютная кофта с принтом зайки. Она согреет вас в прохладную погоду и подарит хорошее настроение. Идеальный выбор для создания нежного образа.', 'Розовый', 18),
(4, 'Бордовая кофта- свитер', '2200.00', 'кофты\\4k.jpg', 'Элегантная бордовая кофта с открытыми плечами - идеальное сочетание стиля и соблазна. Мягкая ткань, глубокий оттенок и акцент на плечах создают женственный и незабываемый образ.', 'Бордовый', 10),
(5, 'Свитер \"Зайчик\" розовый', '3000.00', 'кофты\\5k.jpg', 'Очаровательный розово-белый свитер с милым зайчиком. Теплый, уютный и очень симпатичный- идеальный выбор для создания нежного образа. Подходит как для детей так и для взрослых. Мягкий, как облачко.', 'Розовый', 50);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
