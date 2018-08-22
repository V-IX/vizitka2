-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 22 2018 г., 15:16
-- Версия сервера: 5.5.45
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `vix_lite_tpl_2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `idItem` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `text` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) DEFAULT '0',
  PRIMARY KEY (`idItem`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`idItem`, `title`, `name`, `phone`, `email`, `text`, `addDate`, `isRead`) VALUES
(1, 'Заказать звонок - шапка', 'Владислав Запорожец', '+375 (11) 111-11-11', NULL, NULL, '2016-02-07 23:51:09', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `footer`
--

CREATE TABLE IF NOT EXISTS `footer` (
  `idItem` int(11) NOT NULL AUTO_INCREMENT,
  `idParent` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `link` text,
  `visibility` int(11) DEFAULT '1',
  `num` int(11) DEFAULT '0',
  `target` varchar(255) DEFAULT '_self',
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idItem`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 AUTO_INCREMENT=41 ;

--
-- Дамп данных таблицы `footer`
--

INSERT INTO `footer` (`idItem`, `idParent`, `title`, `link`, `visibility`, `num`, `target`, `addDate`) VALUES
(29, 0, 'Раздел 1', '', 1, 10, '_self', '2016-02-07 00:28:14'),
(31, 29, 'Ссылка 1', '/pages/about', 1, 10, '_self', '2016-02-07 00:28:50'),
(32, 29, 'Ссылка 2', '/pages/about', 1, 9, '_self', '2016-02-07 00:29:10'),
(33, 29, 'Ссылка 3', '/pages/about', 1, 8, '_self', '2016-02-07 00:29:22'),
(37, 0, 'Раздел 2', '', 1, 9, '_self', '2016-02-07 22:06:42'),
(38, 37, 'Ссылка 4', '/pages/about', 1, 10, '_self', '2016-02-07 22:06:42'),
(39, 37, 'Ссылка 5', '/pages/about', 1, 9, '_self', '2016-02-07 22:06:42'),
(40, 37, 'Ссылка 6', '/pages/about', 1, 8, '_self', '2016-02-07 22:06:42');

-- --------------------------------------------------------

--
-- Структура таблицы `navigation`
--

CREATE TABLE IF NOT EXISTS `navigation` (
  `idItem` int(11) NOT NULL AUTO_INCREMENT,
  `idParent` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `link` text,
  `visibility` int(11) DEFAULT '1',
  `num` int(11) DEFAULT '0',
  `target` varchar(255) DEFAULT '_self',
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idItem`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 AUTO_INCREMENT=36 ;

--
-- Дамп данных таблицы `navigation`
--

INSERT INTO `navigation` (`idItem`, `idParent`, `title`, `link`, `visibility`, `num`, `target`, `addDate`) VALUES
(29, 0, 'Главная', '/', 1, 10, '_self', '2016-02-07 00:31:53'),
(30, 0, 'Публикации', '/publications', 1, 9, '_self', '2016-02-07 00:32:18'),
(31, 0, 'О нас', '/pages/about', 1, 8, '_self', '2016-02-07 00:32:40'),
(32, 0, 'Контакты', '/contacts', 1, 7, '_self', '2016-02-07 00:32:52'),
(33, 31, 'Ссылка 1', '/pages/about', 1, 10, '_self', '2016-02-07 21:30:47'),
(34, 31, 'Ссылка 2', '/pages/about', 1, 9, '_self', '2016-02-07 21:31:00'),
(35, 31, 'Ссылка 3', '/pages/about', 1, 8, '_self', '2016-02-07 21:31:10');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `idItem` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `text` text,
  `visibility` int(11) DEFAULT '1',
  `mTitle` varchar(255) NOT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `system` int(11) DEFAULT '0',
  PRIMARY KEY (`idItem`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=3276 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`idItem`, `title`, `alias`, `text`, `visibility`, `mTitle`, `mKeywords`, `mDescription`, `addDate`, `system`) VALUES
(10, 'Политика конфиденциальности', 'confidence', '<p>Политика конфиденциальности</p>', 1, 'Политика конфиденциальности', 'Политика конфиденциальности', 'Политика конфиденциальности', '2015-12-08 14:32:38', 1),
(11, 'О компании', 'about', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae erat quis nunc lacinia cursus sed sit amet ligula. Pellentesque dictum, mi vitae mattis dictum, eros ex aliquet lorem, lacinia euismod sem arcu id massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed leo ante, ullamcorper vel diam quis, finibus egestas velit. Sed efficitur dignissim bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus suscipit ut mauris quis tempor. Donec dignissim neque quis turpis finibus mollis. Nunc posuere egestas dolor in fermentum. Nam feugiat, nisl non tempus tincidunt, augue ex ullamcorper quam, ac ultrices enim purus rutrum lectus. Aenean cursus ex est, quis fermentum orci viverra at. Curabitur dictum erat at lorem venenatis, ac elementum nulla congue. Donec et porttitor dolor, ac gravida libero. Aenean ac rhoncus velit. Ut felis metus, molestie quis condimentum sit amet, accumsan tincidunt odio. Etiam hendrerit mauris id orci ornare feugiat.</p>\r\n\r\n<p>Proin rhoncus ullamcorper interdum. Cras felis dolor, imperdiet non nulla quis, pharetra efficitur arcu. Vestibulum feugiat feugiat dolor nec cursus. Sed scelerisque a risus at molestie. Etiam vel pharetra ex. Suspendisse placerat nunc condimentum, sagittis enim quis, convallis neque. Aenean volutpat maximus tortor quis euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut eleifend non felis a suscipit. Duis at auctor massa. Nulla nulla mi, commodo non bibendum nec, fringilla vitae diam. Donec ac sagittis est. Etiam auctor leo neque, et elementum odio viverra non.</p>\r\n\r\n<p>Praesent pharetra fringilla condimentum. Donec in dapibus sem, ut efficitur orci. Sed et arcu dolor. Proin aliquet sed felis porttitor gravida. Duis eget tellus ut nibh fermentum malesuada. Nam nec semper arcu. Ut neque tellus, auctor sit amet aliquet at, sodales non lectus. In vitae arcu at nisl maximus dapibus quis eget metus. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', 1, 'О компании', 'О компании', 'О компании', '2016-02-07 01:21:03', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `pages_admin`
--

CREATE TABLE IF NOT EXISTS `pages_admin` (
  `idItem` int(11) NOT NULL AUTO_INCREMENT,
  `idParent` int(11) DEFAULT NULL,
  `upline` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `link` text,
  `icon` varchar(255) DEFAULT 'link',
  `num` int(11) DEFAULT '1',
  `access` int(11) DEFAULT '2',
  PRIMARY KEY (`idItem`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `pages_admin`
--

INSERT INTO `pages_admin` (`idItem`, `idParent`, `upline`, `alias`, `name`, `title`, `text`, `link`, `icon`, `num`, `access`) VALUES
(1, 0, '0.1', 'home', 'Главная', 'Домашняя страница', NULL, 'home', 'home', 1, 2),
(2, 1, '0.1.2', 'navigation', 'Навигация', 'Навигация сайта', NULL, 'navigation', 'sitemap', 1, 2),
(3, 1, '0.1.3', 'slider', 'Слайдер', 'Слайдер', NULL, 'slider', 'clone', 2, 0),
(4, 1, '0.1.4', 'footer', 'Футер', 'Ссылки в футере', NULL, 'footer', 'link', 3, 0),
(5, 0, '0.5', '//sector', 'Обратная связь', 'Обратная связь', NULL, NULL, 'bell', 2, 2),
(7, 5, '0.5.7', 'feedback', 'Обратная связь', 'Обратная связь', NULL, 'feedback', 'envelope-o', 1, 2),
(8, 0, '0.8', '//sector', 'Контент', 'Контент', NULL, NULL, 'bars', 3, 2),
(9, 8, '0.8.9', 'publications', 'Публикации', 'Публикации', NULL, 'publications', 'bullhorn', 1, 2),
(10, 8, '0.8.10', 'pages', 'Страницы', 'Информационные страницы', NULL, 'pages', 'files-o', 2, 2),
(11, 0, '0.11', '//sector', 'Управление сайтом', 'Управление сайтом', NULL, NULL, 'cogs', 10, 2),
(12, 11, '0.11.12', 'users', 'Пользователи', 'Пользователи', NULL, 'users', 'users', 1, 2),
(13, 11, '0.11.13', 'pageinfo', 'Страницы', 'Управление страницами сайта', NULL, 'pageinfo', 'desktop', 1, 2),
(14, 11, '0.11.14', 'settings', 'Настройки', 'Настройки сайта', NULL, 'settings', 'cog', 1, 2),
(15, 0, '0.15', 'files', 'Менеджер файлов', 'Менеджер файлов', NULL, 'files', 'folder-open', 9, 2),
(16, 11, '0.11.16', 'panel', 'Админ-панель', 'Настройки админ-панели', NULL, 'panel', 'compass', 4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `pages_site`
--

CREATE TABLE IF NOT EXISTS `pages_site` (
  `idItem` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) DEFAULT NULL COMMENT 'может быть какой угодно, не как в Pages_admin',
  `name` varchar(255) DEFAULT NULL COMMENT 'название страницы - хлебные крошки',
  `title` varchar(255) DEFAULT NULL COMMENT 'заголовок страницы',
  `brief` text,
  `text` text,
  `mTitle` varchar(255) DEFAULT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `thumb_enable` int(11) DEFAULT '0',
  `thumb_x` int(11) DEFAULT '0',
  `thumb_y` int(11) DEFAULT '0',
  PRIMARY KEY (`idItem`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `pages_site`
--

INSERT INTO `pages_site` (`idItem`, `alias`, `name`, `title`, `brief`, `text`, `mTitle`, `mKeywords`, `mDescription`, `thumb_enable`, `thumb_x`, `thumb_y`) VALUES
(24, 'home', 'Главная', 'Добро пожаловать на наш сайт!', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<p>Почему это так важно. Люди создают и публикуют сайты в Интернете не для себя лично, а для пользователей. То есть &laquo;открывая&raquo; свой сайт предполагается, что на него будет кто-то заходить. Иначе &ndash; зачем он?! Это то же самое, что выпускать книгу, которую прочитают только друзья и родственники автора. Или выпускать какой-то продукт, который никому не будет нужен. От ответов на эти два простых вопроса &ndash; для кого и зачем &ndash; зависит очень многое.</p>\r\n\r\n<p>Если у Вас свой бизнес. Необязательно это должна быть крупная фирма. Даже если Вы работаете один и имеете небольшой оборот. Даже если у Вас нет бизнеса, а есть хобби, которое приносит небольшую денежку, уже имеет смысл &laquo;завести&raquo; сайт. Конечно, при условии, что Вы хотите расти и развиваться.</p>\r\n\r\n<p>Собственный сайт для бизнеса &ndash; это Ваше лицо. То место, где клиенты могут получить всю интересующую их информацию. То есть вместо того, чтобы каждому клиенту в деталях объяснять, что, где, как и почему, обо всем этом можно написать на сайте и просто дать клиенту его адрес. Также на нем можно размесить фотографии (видео) своих работ или каталог товаров. А можно открыть целый Интернет-магазин.</p>', 'Главная', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 0, 0, 0),
(25, 'publications', 'Публикации', 'Публикации', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '<h2>Mauris ut risus tempus, finibus diam et, egestas ante.</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lorem diam, aliquam eget velit sit amet, molestie tempor purus. Nullam auctor sem et nulla egestas, dapibus facilisis massa porttitor. Suspendisse non ultrices arcu. Mauris ut risus tempus, finibus diam et, egestas ante. Maecenas lobortis malesuada erat ac tristique. Quisque id sollicitudin sapien. Curabitur porta ante quis arcu commodo, non tincidunt augue viverra.</p>\r\n\r\n<p>Nulla molestie, lacus quis egestas vulputate, dolor libero molestie dui, vel faucibus sem lorem non dolor. Aliquam id risus turpis. Etiam non egestas augue, eget maximus tortor. In turpis nisi, cursus non velit eu, pretium pellentesque dolor. Nam egestas porta dui et consequat. In finibus in nulla non imperdiet. Sed non massa eros. Donec a lacus massa. Praesent aliquam nulla quam, vitae vestibulum neque dapibus quis. Cras placerat rhoncus dui quis ultricies.</p>\r\n\r\n<h3>Duis ut ipsum imperdiet, euismod sapien vel, maximus ligula.</h3>\r\n\r\n<p>Nunc fringilla luctus erat, eu sollicitudin dolor tincidunt eu. Nullam eget sem eros. Curabitur non augue pellentesque, elementum purus eu, convallis orci. Donec at maximus odio. Donec mauris nibh, tempor ac metus eu, faucibus bibendum nibh. Sed dui nisl, cursus quis porta ac, feugiat eget risus. Sed felis orci, pulvinar nec iaculis a, auctor ut urna. Suspendisse volutpat malesuada risus, commodo rutrum magna gravida et.</p>\r\n\r\n<h3>Etiam ac fermentum enim, ut tempor mauris.</h3>\r\n\r\n<p>Aenean vel lectus interdum, placerat nibh non, gravida risus. Duis sed lacus nec purus tincidunt consequat pellentesque at eros. Nam convallis non risus non maximus. Praesent dignissim massa justo, et sodales lacus mattis efficitur. Fusce vel erat mauris. Suspendisse ac dictum enim. Vestibulum sed efficitur lorem. Nunc ut ornare erat. Nam gravida tincidunt lacus a pulvinar. Nulla in lacus at sem fermentum iaculis sed a dolor. Maecenas bibendum tortor risus, rhoncus consectetur nunc laoreet id. Proin varius risus ut neque semper, quis dictum metus cursus.</p>\r\n\r\n<h3>Sed dictum risus sed mi interdum ullamcorper.</h3>\r\n\r\n<p>Nullam tortor mi, aliquet in neque eget, mollis malesuada diam. Fusce mattis rhoncus magna, nec facilisis tortor pharetra vel. Vivamus convallis eget nisl ac commodo. Curabitur mi sem, sagittis id sagittis et, vestibulum a neque. Maecenas ut nulla elementum, fringilla eros sit amet, maximus elit. Duis vel turpis feugiat, ultrices dolor id, porttitor sem. Proin pulvinar quis quam non finibus. Nam felis risus, condimentum ut mi eu, vehicula pulvinar nisi. Sed dolor ligula, euismod ut nisi sit amet, ornare ultrices metus. Phasellus tortor purus, lacinia non ullamcorper auctor, faucibus et lectus. Integer id finibus orci, ac dignissim risus. Donec eget lobortis leo. Ut pellentesque, massa et laoreet aliquam, magna ligula auctor turpis, sed blandit enim diam eget libero. Nulla nisi turpis, auctor at maximus vitae, scelerisque id nulla.</p>', 'Публикации', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 1, 650, 250),
(26, 'contacts', 'Контакты', 'Контакты', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', '', 'Контакты', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 0, 0, 0),
(27, 'errors', 'Ошибка 404', 'Ошибка 404', 'Страница не найдена!', '', 'Ошибка 404', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 'Описание раздела для сео-продвижения. Редактируется в админ-панели', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `publications`
--

CREATE TABLE IF NOT EXISTS `publications` (
  `idItem` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `text` text,
  `img` text,
  `num` int(11) DEFAULT '1',
  `visibility` int(11) DEFAULT '1',
  `mTitle` varchar(255) NOT NULL,
  `mKeywords` varchar(255) DEFAULT NULL,
  `mDescription` text,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idItem`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=3276 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `publications`
--

INSERT INTO `publications` (`idItem`, `title`, `alias`, `brief`, `text`, `img`, `num`, `visibility`, `mTitle`, `mKeywords`, `mDescription`, `addDate`) VALUES
(17, 'Что такое продвижение сайта и зачем оно нужно?', 'chto-takoe-prodvizhenie-sajta-i-zachem-ono-nuzhno', 'В интернет-пространстве миллиардное количество сайтов. Чтобы найти информацию или услуги, сейчас пользуются специальными поисковыми машинами (Яндекс, Гугл и др.).', '<p>Вводя вопрос в поисковик, Вы запускаете очень сложный процесс подбора источников, которые, по мнению машины, должны наиболее точно ответить на Ваш вопрос. После этого машина выдает Вам список ресурсов.&nbsp;</p>\r\n\r\n<p>Многие исследования показывают, что обычный пользователь просматривает 2&ndash;4 первых сайта в листе поиска, реже &ndash; до 10 штук. Поэтому под продвижением ресурса понимают попадание сайта, по определенным запросам, в первые 10 строк поиска.&nbsp;</p>\r\n\r\n<p>Что нужно понимать при заказе продвижения сайта?&nbsp;</p>\r\n\r\n<p>Прежде всего, Вы должны сами для себя понять, что Вы хотите. Невозможно продвинуть сайт, можно продвинуть страницы Вашего ресурса с определенной информацией.&nbsp;</p>\r\n\r\n<p>Когда-то давно, продвижение делалось очень просто: на белом фоне, белым цветом писалось много-много раз нужное слово, и Вы становились первыми.&nbsp;</p>\r\n\r\n<p>Такие времена ушли безвозвратно. Все поисковики борются с таким или похожим продвижением.&nbsp;</p>\r\n\r\n<p>Основная идея, которую они продвигают сегодня, такова &ndash; Вы будете первыми, если на ресурсе, который сделан так, чтобы человеку было удобно, есть нужная человеку информация. Причем написанная человеком, правильным языком и без SEOшных заморочек.&nbsp;</p>\r\n\r\n<p>Это конечно замечательно, но мы должны понимать, что все люди, которые занимаются сайто-строительством, далеко не дураки, и поэтому война сайтов велась и будет вестись пока существует Интернет.&nbsp;</p>\r\n\r\n<p>Что должен предложить Вам SEO-специалист?</p>\r\n\r\n<ol>\r\n	<li>Прежде всего, конечно, Вам предложат аудит Вашего сайта. После него Вам придется многое переделать в своем сайте, чтобы оптимизировать его под запросы и внутренние ссылки.&nbsp;</li>\r\n	<li>Вы должны объяснить, в общих чертах, что Вы хотите продвинуть, а специалист должен предложить Вам семантическое ядро сайта, на основе которого он будет предлагать Вам список запросов, по которому будут продвигаться страницы Вашего ресурса.&nbsp;</li>\r\n	<li>Предложить дописать или переработать страницы ресурса, сделав их &laquo;приземляющими&raquo;, под выбранные запросы.&nbsp;</li>\r\n	<li>Подготовить ссылочную базу, чтобы улучшить видимость сайта в Интернете.&nbsp;</li>\r\n	<li>Предложить стратегию по проведению директ-рекламы Вашего сайта.</li>\r\n</ol>', 'a547682db856c981f0103da8d6fc21cf.jpg', 1, 1, 'Что такое продвижение сайта и зачем оно нужно?', 'Что такое продвижение сайта и зачем оно нужно?', 'Что такое продвижение сайта и зачем оно нужно?', '2016-02-07 00:06:22'),
(18, 'Умение находить общий язык с конкурентами – залог прочных позиций на рынке', 'umenie-nahodit-obshij-yazyk-s-konkurentami-zalog-prochnyh-pozicij-na-rynke', 'Начиная свой бизнес или продвигая компанию работодателя, важно заручиться не только надежными партнерами, но и грамотно выстроить отношения с конкурентами.', '<p>Кто-то может сказать, что занимаясь делом, не стоит вообще на кого-либо обращать внимание. Вы выбрали эту стратегию, а Ваш конкурент другую. Вы любите большие скидки и распродажи, а он делает упор на качество и сопутствующие услуги. Разногласий с конкурентами может возникнуть множество. Еще бы! Вы же подвинули их и уменьшили их долю рынка. Как поступить? Развязать войну, отвоевывая себе место, или вести мирные переговоры?</p>\r\n\r\n<p>Недаром говорят, лучше самой тихой войны худой мир. Подумайте сами, сколько сил, средств и времени может отнять эта никому не нужная война. Демпинговать ценами, рассказывать везде и всюду, какие они плохие, указывать потенциальным потребителям на недостатки конкурентов? Но ведь все это может обернуться против Вас.</p>\r\n\r\n<p>Лучше подумать над тем, чем вы можете быть друг другу полезны. Возможно, заключив соглашение о приблизительно равных ценах и регламентировании ассортимента, Вы только больше выиграете, сделав ставку на качество обслуживание, оформление интерьера торгового зала, внедрение дополнительных услуг, которых нет у Вашего конкурента. Выгодное сотрудничество &ndash; хороший способ противостоять более сильным и матерым коммерсантам. Периодически кризис реализации проявляется во всех отраслях &ndash; сезонность, политические и экономические коллизии дают себя знать регулярно. Грамотное поведение и дружба с конкурентами может помочь выжить в не простых экономических условиях, а потом, это лучший способ знать о положении их дел, свободно посещая офис, торговый зал, производство и т.д. Выискивать и вынюхивать Вас никто не заставляет, а поддержание приятельских отношений значительно облегчит ваше существование на рынке.</p>\r\n\r\n<p>Хороший способ заручиться дружбой конкурента &ndash; приобретать у него на постоянной основе, какую-нибудь мелочевку. Такое положение выведет Вас из ранга конкурентов. Не будет же Ваш поставщик строить козни против своего постоянного покупателя! А Вам это даст возможность ориентироваться в размере наценок, отношении к покупателям, уровне сервиса Вашего конкурента. Правильно сделанные выводы помогут избежать многих ошибок, модернизировать Ваш бизнес, внести что-то новое и ликвидировать не рентабельные направления. Насколько это выгодно Вашему конкуренту? А, собственно, какая Вам разница, выгодно ему это или нет?</p>\r\n\r\n<p>Не найдете компромисс во взаимоотношениях с конкурентами &ndash; они Вас просто выживут с рынка. Закон джунглей превратился в самый действенный стимул поведения на рынке. Превратить конкурента в коллегу &ndash; Ваша прямая задача!</p>', '82fe10d7d21c1858e7e5ea4b47ed51ae.jpg', 1, 1, 'Умение находить общий язык с конкурентами – залог прочных позиций на рынке', 'Умение находить общий язык с конкурентами – залог прочных позиций на рынке', 'Умение находить общий язык с конкурентами – залог прочных позиций на рынке', '2016-02-07 00:09:29'),
(19, 'Брендинг – заставь имя работать на себя!', 'brending-zastav-imya-rabotat-na-sebya', 'Брендинг являет собой высшую ступень развития маркетинговой деятельности. Брендинг – гарантия пожизненного успеха компании, ее обладателей и сотрудников.', '<p>Именно бренд заставляет людей купить продукт или услугу. Однако для того чтобы стать профи в данном деле, чтобы действительно заставить имя работать на компанию, необходимо приложить немалые усилия, провести колоссальные объемы работ и исследований. Начать, пожалуй, стоит непосредственно с понятия.</p>\r\n\r\n<p>Бренд &ndash; уникальное, неповторимое, единственное и продающее имя фирмы, компании, предприятия, которое укоренилось в сознании людей, имеет отличную репутацию и заставляет покупателя выбирать именно данный продукт. Наличие бренда гарантирует продавцу, производителю, что товар, даже обладая примерно равными или даже более низкими показателями в сравнении с конкурентами, будет куплен в несколько раз чаще конкурентов.</p>\r\n\r\n<p>Брендинг сегодня &ndash; не просто способ продвижения товара, но философия, которая создает и распространяет, укрепляет и сохраняет определенный образ в сознании потребителей. В настоящее время брендинг в Беларуси еще не до конца изучен, применяется только в качестве креативного, ультрасовременного метода в маркетинге.</p>\r\n\r\n<p>Проблема брендинга в Беларуси заключается в том, что, во-первых, компании редко существуют более десяти лет, во-вторых, не каждый маркетолог с точки зрения своего экономического образования способен творчески подойти к вопросу о рекламе, продвижении, формировании образа товара. PR-службы компаний же, в свою очередь, неадекватно понимают суть брендинга.</p>\r\n\r\n<p>Главными отличиями западного процесса брендинга от белорусского являются средства, выделяемые на эти процессы, а также время, отведенное на реализацию проекта. С уверенностью можно говорить о том, что именно специфика белорусского рынка должна стать первоочередным фактором, учитывающимся при создании бренда. Бездумное, бездушное перенимание западного опыта не приведет к успеху.</p>\r\n\r\n<p>Все возможные и известные методы маркетинга, авторские разработки и креативное мышление &ndash; вот что должно стать помощником в создании бренда. Для брендинга характерно взаимодействие специалистов разного уровня и направлений, это необходимо учитывать.</p>\r\n\r\n<p>Наличие полной, четкой, хорошо разработанной концепции, которая определяет частные и общие черты программы по созданию брендинга, является необходимым условием и залогом успеха на всех этапах. Качественный брендинг значительно повысит эффективность деятельности.</p>\r\n\r\n<table border="1" cellpadding="20" cellspacing="1" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>sadfghsf</td>\r\n			<td>sdfsdfdsfsd</td>\r\n		</tr>\r\n		<tr>\r\n			<td>sdfsdfsdf</td>\r\n			<td>fsdfds</td>\r\n		</tr>\r\n		<tr>\r\n			<td>sdfsdfsfsdfsdf</td>\r\n			<td>fdsfsdfdsfsdfsdfsdf</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '47afb521da16479b4985474f2eb76948.jpg', 1, 1, 'Брендинг – заставь имя работать на себя!', 'Брендинг – заставь имя работать на себя!', 'Брендинг – заставь имя работать на себя!', '2016-02-07 00:10:33');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `idItem` int(11) NOT NULL AUTO_INCREMENT,
  `theme` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `img` text,
  `owner` text,
  `details` text,
  `phone` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `phoneCity` varchar(255) DEFAULT NULL,
  `adres` text,
  `map` text,
  `email` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `mTitle` varchar(255) DEFAULT NULL,
  `mKeywords` text,
  `mDescription` text,
  `enable` int(11) DEFAULT '1',
  `capTitle` varchar(255) DEFAULT NULL,
  `capDescr` text,
  `phoneMask` varchar(255) DEFAULT NULL,
  `phone2Mask` varchar(255) DEFAULT NULL,
  `phoneCityMask` varchar(255) DEFAULT NULL,
  `showImg` int(11) DEFAULT NULL,
  `offerTitle` text,
  `offerText` text,
  `offerAdv` text,
  PRIMARY KEY (`idItem`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`idItem`, `theme`, `title`, `descr`, `img`, `owner`, `details`, `phone`, `phone2`, `phoneCity`, `adres`, `map`, `email`, `skype`, `mTitle`, `mKeywords`, `mDescription`, `enable`, `capTitle`, `capDescr`, `phoneMask`, `phone2Mask`, `phoneCityMask`, `showImg`, `offerTitle`, `offerText`, `offerAdv`) VALUES
(2, NULL, 'БизнесСтрессАльянс', 'не знаем чем занимаемся', 'logo.png', 'Owner Name', 'Индивидуальный предприниматель Рудь Руслан Викторович\r\n211440, Витебская область, г.п.Боровуха, ул.Армейская, д.28, кв.36', '331000000', '292000000', '0214000000', 'ул. Юбилейная, 2-А, офис 207', '&lt;iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2257.940191571558!2d28.646495916064257!3d55.53341101635849!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46c485470fe797a1:0xa7008b17bd5f2a6b!2z0K7QsdC40LvQtdC50L3QsNGPINGD0LsuIDLQsCwg0J3QvtCy0L7Qv9C-0LvQvtGG0Lo!5e0!3m2!1sru!2sby!4v1454916173145" width="100%" height="250" frameborder="0" style="border:0" allowfullscreen&gt;&lt;/iframe&gt;', 'narisuemvse.testmail@yandex.ru', 'skype_login', 'Бизнес Стресс Альянс', 'Company name - company description', 'Company name - company description', 1, 'Сайт временно закрыт', 'Приносим свои извинения и гарантируем в скором времени наладить работу', '+375 (??) ???-??-??', '+375 (??) ???-??-??', '8 (????) ??-??-??', 1, 'Инвестируйте в\r\nсветлое будущее', 'Этот продукт окупит Ваши затраты в\r\nпервый же месяц на 100%', '["\\u0418\\u043d\\u0434\\u0438\\u0432\\u0438\\u0434\\u0443\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434 \\u043a \\u043a\\u0430\\u0436\\u0434\\u043e\\u043c\\u0443 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0443, \\u043d\\u0435 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e \\u043e\\u0442 \\u0447\\u0435\\u043a\\u0430 \\u0438 \\u0440\\u043e\\u0434\\u0430 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438.","\\u041d\\u0435 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e \\u043e\\u0442 \\u0447\\u0435\\u043a\\u0430 \\u0438 \\u0440\\u043e\\u0434\\u0430 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u043d\\u0430\\u0439\\u0434\\u0435\\u043c \\u0438\\u043d\\u0434\\u0438\\u0432\\u0438\\u0434\\u0443\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434 \\u043a \\u043a\\u0430\\u0436\\u0434\\u043e\\u043c\\u0443 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0443.","\\u041a \\u043a\\u0430\\u0436\\u0434\\u043e\\u043c\\u0443 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0443 \\u043d\\u0430\\u0439\\u0434\\u0435\\u043c \\u0438\\u043d\\u0434\\u0438\\u0432\\u0438\\u0434\\u0443\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434, \\u043d\\u0435 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e \\u043e\\u0442 \\u0447\\u0435\\u043a\\u0430 \\u0438 \\u0440\\u043e\\u0434\\u0430 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438."]');

-- --------------------------------------------------------

--
-- Структура таблицы `theme_admin`
--

CREATE TABLE IF NOT EXISTS `theme_admin` (
  `idItem` int(11) NOT NULL AUTO_INCREMENT,
  `current` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idItem`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `theme_admin`
--

INSERT INTO `theme_admin` (`idItem`, `current`, `title`, `alias`, `brief`) VALUES
(1, 1, 'NarisuemVse Admin Panel', 'narisuemvse', 'Стандартная тема от команды "Нарисуем все". Приятный интерфейс и воздушные цвета придутся по вкусу любителям минимализма.'),
(2, 0, 'VIX-CMS Admin Panel', 'vix', NULL),
(3, 0, 'Gradient Admin Panel', 'gradient', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `idItem` int(11) NOT NULL AUTO_INCREMENT,
  `access` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` text,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idItem`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`idItem`, `access`, `login`, `password`, `email`, `name`, `sname`, `lname`, `addDate`) VALUES
(1, 'admin', 'admin', '46f94c8de14fb36680850768ff1b7f2a', 'narisuemvse.testmail@yandex.ru', 'Иван', 'Иванов', '', '2015-06-06 12:49:47'),
(8, 'admin', 'moderator', '46f94c8de14fb36680850768ff1b7f2a', 'narisuemvse@mail.ru', 'Петр', 'Петров', NULL, '2015-11-17 12:07:30');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
