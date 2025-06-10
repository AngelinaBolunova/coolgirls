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
-- Структура таблицы `bryuki`
--

CREATE TABLE `bryuki` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'не указан',
  `quantity` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `bryuki`
--

INSERT INTO `bryuki` (`id`, `name`, `price`, `image_path`, `description`, `color`, `quantity`) VALUES
(1, 'Розовые брюки с бантиками', '3500.00', 'брюки\\1b.jpg', 'Яркие розовые брюки- добавьте цвета в свой гардероб. Стильный и смелый выбор для создания запоминающегося образа. Комфортная посадка и актуальный дизайн.', 'Розовый', 15),
(2, 'Яркие брюки желтого цвета', '2400.00', 'брюки\\2b.jpg', 'Солнечные широкие желтые брюки. Изготовлены из легкой дышащей ткани,обеспечивающей комфорт в течение всего дня. Яркий желтый цвет привлекает внимание и поднимает настроение. Свободный крой не сковывает движения. ', 'Желтый', 14),
(3, 'Широкие розовые брюки в клетку', '2800.00', 'брюки\\3b.jpg', 'Очаровательные розовые широкие брюки в клетку с зайчиками.Этот необычный принт не оставит вас незамеченными. Свободный крой и яркий цвет. Создают неповторимый стильный образ. Идеально подходят для тех, кто любит выделяться из толпы.', 'Розовый', 23),
(4, 'Черные брюки-клеш', '3000.00', 'брюки\\5b.jpg', 'Классические черные брюки-клеш - вневременная элегантность и безупречный стиль. Высокое качество ткани и безупречный крой подчеркнут вашу фигуру и добавят изюминку любому образу.', 'Черный', 22),
(5, 'Бежевые прямые брюки', '3300.00', 'брюки\\4b.jpg', 'Классические бежевые прямые брюки - основа стильного гардероба. Универсальный крой, благородный цвет и безупречный комфорт. Прямой крой визуально вытягивает фигуру, а нейтральный бежевый легко сочетается с другими элементами гардероба. Идеальный выбор для офиса, деловых встреч и повседневной носки.', 'Бежевый', 31);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
