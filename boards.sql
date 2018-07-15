-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 15 2018 г., 23:47
-- Версия сервера: 5.6.38
-- Версия PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `board`
--

-- --------------------------------------------------------

--
-- Структура таблицы `boards`
--

CREATE TABLE `boards` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `boards`
--

INSERT INTO `boards` (`id`, `title`, `body`, `image`, `user_id`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 'Человеческий зоопарк', 'Особые условия содержания: SCP-2429 продолжает работать в штатном режиме. На его территории всегда несут дежурство тайные агенты Фонда. Вход в SCP-2429-1 заколочен деревянными досками, к которым прикреплена табличка с надписью «Не работает». Если посторонние лица, не обладающие правом допуска, попытаются проникнуть внутрь SCP-2429-1, данную ситуацию следует расценивать как нарушение ОУС. Всех нарушителей режима секретности необходимо обрабатывать амнезиаком класса А как можно скорее. Любой посетитель SCP-2429, демонстрирующий поведение, по которому можно предположить, что он стал жертвой аномальных свойств, также должен быть обработан амнезиаком класса А.', 'uploads/zGEQJhlt0BvG3duTQj4FP0eJ3UuImumD5l3a21vS.jpeg', '1', '2018-07-15 14:55:33', '2018-07-15 14:55:33', '2018-07-15 14:55:33'),
(2, 'Навигатор', 'Особые условия содержания: SCP-2799-1, SCP-2799-2, SCP-2799-3 и SCP-2799-4 содержатся в четырёх отдельных учреждениях Фонда: Зоне 77, Зоне 59, Зоне ██ и Зоне ██, соответственно, в отдельных ячейках для хранения аномальных предметов. Персонал с уровнем допуска ниже 3 не может быть осведомлён о точном местонахождении более чем одного из этих объектов; персонал с уровнем допуска ниже 4 не может быть осведомлён о точном местонахождении более чем двух. Доступ к полным данным о местоположении SCP-2799 ограничен персоналом 5 уровня.', 'uploads/GKy04lYpAKyU4ZZbJLUYWukIju89GrDmWJE8FDDH.jpeg', '1', '2018-07-15 14:56:21', '2018-07-15 14:56:21', '2018-07-15 14:56:21'),
(4, 'Цена знаний', 'Работать преподавателем истории Вильяму не нравилось. Сказать по правде, он терпеть не мог эту работу. Однообразие убивало - одни и те же лекции снова и снова, сотни одинаковых сонных и скучающих студентов каждый день. Не было и надежды на новизну, на открытия. Ему хотелось смены ритма, чего-то, что не касалось бы пушного промысла в Северной Америке или Опиумных Войн или промышленной революции. Должно же быть что-то неоткрытое, что-то, что ему ещё не попадалось.', 'uploads/MclVJyvAg5GesiCmaQQaX2sZyPV5bB644Kd7yptc.jpeg', '1', '2018-07-15 15:03:10', '2018-07-15 15:03:10', '2018-07-15 15:03:10'),
(5, 'Что-то интересное', 'На самом деле нет очередной тест для проекта', 'uploads/GQBuUtbcteUULks3k4jHNdPXXv0M3mahaZEk0pKg.jpeg', '2', '2018-07-15 15:16:08', '2018-07-15 15:16:08', '2018-07-15 15:16:08'),
(6, 'Мясо по-французски', 'Это же мерзко!\r\nМясо по-французски (мясо по-капитански) — эталонный образец нямки. Рецепт донельзя вариативен, но постоянно включает в себя мясо, картофель и, непременно, сыр и маянезик. Суть сводится к перекладыванию слоями картошки, мяса, опционально — лука и моркови (кол-во мяса меняется в зависимости от бюджета повара), заливке получившейся бурды майонезом, притрушивания зеленью, засыпания сыром и запекания в духовке до готовности мяса.', 'uploads/UEXxZRGVhNf3pORjSJ1hpVxlC1ne1aHhIcOwcfQE.jpeg', '2', '2018-07-15 15:37:53', '2018-07-15 15:37:53', '2018-07-15 15:37:53'),
(7, 'EVE Online/Механика', 'Раскачка — отдельный предмет для фапа. Скиллов дохуя. Просто дохуя. Выучить можно кем угодно и что угодно. Статы персонажа влияют только и исключительно на скорость изучения скиллов. Создание хороших универсалов требует годов реального времени. Поэтому нормальные люди имеют несколько специализированных (под боёвку, под копание астероидов, под производство и прочее) чаров.', 'uploads/jTWFc4ZlRhSUSN5AiQOLUeSwTuUXhZsga52NGaey.jpeg', '2', '2018-07-15 15:38:23', '2018-07-15 15:38:23', '2018-07-15 15:38:23'),
(8, 'Альберт Акчурин', 'Я родился 9 октября 1993 года в Уфе, учусь на дистанционном обучении дома через комп и скайп. Через скайп я могу общаться со своими учителями и друзьями и заниматься уроками. в свободное время люблю сидеть весь день дома со своими кошками и мамой, за компом, за интернетом, смотреть телек, слушать музыку, иногда в день по несколько раз гулять на свежем воздухе. Я люблю учебу, своих родных, особенно маму, папу, братьев, и ещё я люблю своих кошек: Макса, Мурысю, и Арианну. люблю с ними поиграть. Я фанат Майкла Джексона, Димы Билана, Андрея Губина, мне нравится как они поют, танцуют, особенно Майкл Джексон. Я думаю, что он жив. Надеюсь, что он скоро вернется. Я человек который ведет ЗОЖ (здоровый образ жизни) — то есть не пью не курю не употребляю наркотики, матом говорю только в том случае если кто то обидет, оскорбит или унизит всякими нецензурными словами меня или мою семью, чтобы ставить таких людей на место и защищать себя от таких людей и оскорблений. а так я стараюсь быть хорошим послушным вежливым мальчиком и не материться. Ненавижу девушек, которые любят играть на моих нервах, а также девушек легкого поведения (проституток). я таких не люблю и не выношу. Я очень не люблю по ночам ходить с друзьями в ночные клубы, дискотеки, игровые автоматы, не люблю гулять после ночи и возвращаться поздно домой.\r\n\r\nТакже я очень не люблю дружить и общаться с неформалами, скинхедами, эмо людьми, скинами, сатанистами и.т.д. Терпеть не могу таких людей((((((\r\n\r\nНенавижу когда меня предают и обманывают, я очень не люблю этого, я люблю общаться с хорошими и честными людьми которые говорят мне правду!!!!\r\n\r\nЯ не хочу встречаться с девушкой, которая пьет и курит, является неформалом. эмо, скинхедом, которая меня обманывает, очень не люблю когда мне врут.\r\n\r\nЯ уж лучше дома буду сидеть чем тусить с друзьями. Это не для меня. И даже не пытайтесь меня уговаривать ходить с вами в клубы дискотеки игровые автоматы, пить с вами пиво, коктейли всякие, и всякую алкогольную дрянь, курить с вами и употреблять всякую наркоту, все равно у вас ничего не получится.\r\n\r\nP.S. Учтите это раз и навсегда.', 'uploads/TILE3oX9gnXp0P5aTQ9F7M1Ig1FJUjMnYeSW24dF.jpeg', '2', '2018-07-15 15:44:00', '2018-07-15 15:44:00', '2018-07-15 15:44:00'),
(9, 'Punisher', 'Каратель (англ. The Punisher) — один из самых первых и популярнейших антигероев в комиксах, выходец из Marvel. Убиватель всем, что подвернётся под руку. Стал таковым после трагической смерти своей семьи, и теперь намерен карать преступников до конца своих дней. В своё время разорвал шаблоны читателям комиксов и продолжает доставлять и в наши дни.', 'uploads/qXG7vj93CFLDsXms2c6wU6ATnPs5ZHjWgMH5FsOz.jpeg', '3', '2018-07-15 15:52:58', '2018-07-15 15:52:58', '2018-07-15 15:52:58'),
(10, 'СЧАСТЬЕ', 'Счастье – это состояние человека, пребывая в котором он доволен своей жизнью. Каждый человек понимает чувство счастья по-своему. Для кого-то это любить и быть любимым, для кого-то - просто испытывать большую радость, для кого-то обладать финансовой обеспеченностью. Кто-то счастлив делая покупки, кто-то – ухаживая за своим домашним питомцем, кто-то - от достижения целей.', 'uploads/pNB8LdDP0dX5GyuE82VvjTUN1etrzW6ezNT3HQZ3.jpeg', '4', '2018-07-15 18:04:55', '2018-07-15 18:04:55', '2018-07-15 18:04:55'),
(11, 'Во-первых, ты хуй и говно', '«Во-первых, ты хуй и говно» — известный, но ныне вышедший из употребления мем двача, с которого анонимные эксперты начинали написание профессиональных консультаций по тем или иным техническим вопросам в разделе /s/. Обычно это вступление свидетельствовало о неподдельном уважении эксперта к консультируемому, так как он (эксперт) таки снизошёл до ответа.', 'uploads/GjOamvdhaoa4GuJ0wYTIp94HFMINeF935OOS77sb.jpeg', '4', '2018-07-15 18:06:32', '2018-07-15 18:06:32', '2018-07-15 18:06:32'),
(12, 'Весёлые картинки', 'Как-то карикатуристу журнала «Крокодил» Ивану Семенову пришла в голову светлая мысль — сеять разумное, доброе, вечное надо с юморком и бугагашечками, чтобы юные падаваны не впадали в спячку от скучных нравоучений и обучалок. Так появился журнал, маскотом которого стал Карандаш.', 'uploads/XIdRr3GhWtkTBV6kw0xa1avHCcHEK4vQ9mX9sB1O.jpeg', '4', '2018-07-15 18:07:02', '2018-07-15 18:07:02', '2018-07-15 18:07:02'),
(13, 'Арабские бунты/Сирия', 'Гражданская война в Сирии — плавный процесс разрушения государственности в отдельно взятой стране руками умеренной оппозиции при моральной и финансовой поддержке отцов-основателей демократии. По прошествии времени стал рычагом нагибания просвещённой Европы посредством набигающих беженцев, ибо хитрый план. В последствии при поддержке Солнцеликого® государство и лидер в его главе всё-таки выстояли.', 'uploads/NCnCrMSoRqLtN4Rjpt17mWR0dBSkuzZ9YcOw6cQK.jpeg', '4', '2018-07-15 18:07:24', '2018-07-15 18:07:24', '2018-07-15 18:07:24'),
(14, 'How It Should Have Ended', 'How It Should Have Ended (HISHE, рус. Как это следовало закончить) — серия винрарных флеш-клипов, демонстрирующих альтернативную концовку культовых фильмов, игр и сериалов: как правило, ту, что фанаты тщетно ждали, либо очевидную по самой примитивной логике, но недостаточно зрелищную с точки зрения Голливуда. Имеет бешеный успех у зарубежного зрителя, да и Рунет пестрит переводами сабжа на великий и могучий. Со временем веб-сериал обзавёлся собственным фэндомом.', 'uploads/qmzXKQRERo768hn7ulxM1nLSkmwwFqW0IkvdqGN1.jpeg', '4', '2018-07-15 18:07:57', '2018-07-15 18:07:57', '2018-07-15 18:28:43'),
(15, 'asdasd', 'куценыафываыфаф', 'uploads/N6n9Enkls3Rz3pRb8ec3xzWP4p7W7N8yGbKKcmyq.jpeg', '2', '2018-07-15 18:52:37', '2018-07-15 18:52:37', '2018-07-15 18:52:37'),
(16, 'asdadsaads', 'sadasdasdasasd', 'uploads/NehoBHQ5TNtzA6A3F3K5Gof0AK1YM10GF9lPjI3y.jpeg', '2', '2018-07-15 19:46:32', '2018-07-15 19:46:32', '2018-07-15 19:46:32'),
(17, 'my first coolasd', 'asdasdsadsaasd', 'uploads/Gasbtu8xh25Q35zetLxkmv4UEZjtXKxBN3SDYyNB.jpeg', '2', '2018-07-15 19:46:52', '2018-07-15 19:46:52', '2018-07-15 19:46:52'),
(18, 'Another great ad', 'asdasdasdasdasdqweqdqwdq', 'uploads/UQ3NQKegJOayaMmWDmWtAJ6LpsjhtVrV1jJ7scnE.jpeg', '2', '2018-07-15 19:47:26', '2018-07-15 19:47:26', '2018-07-15 19:47:26'),
(19, 'fewgewrgesrgr', 'eagewgwegqawerfasgardsagwaefaw', 'uploads/rCLKkmFTgsZU2sCt6PRFVrnoTAWQi4EOVq2EBwA7.jpeg', '2', '2018-07-15 19:47:43', '2018-07-15 19:47:43', '2018-07-15 19:47:43'),
(20, 'fewqfwergqwefgwerg', 'wqergwergqwerfgwergqwgwqregqrgqegrwe', 'uploads/C8qQSvWLEwxvNsmlquboMDp2ssszcn7GMw1aCyWM.jpeg', '2', '2018-07-15 19:47:51', '2018-07-15 19:47:51', '2018-07-15 19:47:51'),
(21, 'frewgwerhw4t', 'rthrwtrhrthesgergkwerjhgihwejfklaw', 'uploads/mXADzViE4oBLK2wVO7gSoLNATpEAUAGMi6hhUqnd.jpeg', '2', '2018-07-15 19:48:08', '2018-07-15 19:48:08', '2018-07-15 19:48:08'),
(22, 'fmdsbnkfjans djlfnaljksfnaslkj', 'nfdslkfnlkasdnmfklsdnlfkjsdnlknfsdlkfmsdlkfmlsdknmf', 'uploads/IWVq6ZK7XJqYGLMVtaWAeSMxliwjI698BMViJEpq.jpeg', '2', '2018-07-15 19:48:33', '2018-07-15 19:48:33', '2018-07-15 20:17:54');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
