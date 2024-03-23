INSERT INTO Passenger (passenger_id, last_name, first_name, middle_name, document, information, email, phone_number) VALUES
(98, 'Щепина', 'Екатерина', 'Андреевна', 'паспорт', '9222457389', 'vedma@mail.com', '89274783467'),
(16, 'Никитин', 'Алексей', 'Владимирович', 'паспорт', '3692581477', 'nikitin.aleksey@icloud.com', '89374673461'),
(99, 'Зотина', 'Вероника', 'Константиновна', 'заграничный паспорт', '723774859', 'ronni@yandex.ru', '89994783404'),
(2, 'Иванов', 'Дмитрий', 'Евгеньевич', 'паспорт', '84924573154', 'ivanov.dmitriy@example.com', '89134779870'),
(3, 'Смирнова ', 'Ольга', NULL, 'вид на жительство в РФ', '821345223', 'smi@mail.com', '8341669823'),
(4, 'Соколова', 'Анна', 'Ивановна', 'паспорт', '3692581479', 'anna@example.com', '81234772345'),
(5, 'Шабалин', 'Илья', 'Сергеевич', 'паспорт', '9217363478', 'shaba@example.com', '89867158666'),
(6, 'Шаммедова', 'Самира', NULL, 'паспорт',' 9218345123', 'samirka2003@example.com', '89173662378'),
(7, 'Калабанов', 'Степан', 'Вячеславович', 'паспорт', '9221678399', 'stepan@example.com', '89174552371'),
(8, 'Кит', 'Светослав', 'Дмитриевич', 'заграничный паспорт', '722774119', 'svet@example.com', '89903471233'),
(9, 'Дьяконова', 'Лидия', 'Евгеньевна', 'паспорт', '9113845123', 'lidada0101@example.com', '89173669999'),
(10, 'Петров', 'Олег', 'Евгеньевич', 'паспорт', '922242698', 'oleja2004@example.com', '89994522312'),
(11, 'Шарифзянова', 'Зиля', 'Рифкатовна', 'паспорт', '9867123456', 'she2004@example.com', '89004581209'),
(12, 'Чесноков', 'Дмитрий', 'Дмитриевич', 'паспорт', '91233991221', 'choir@example.com', '89274891221'),
(13, 'Кокорина', 'Дарья', 'Олеговна', 'паспорт', '9779199004', 'darkoko@example.com', '89926471298');


INSERT INTO Sale (sale_id, name, procent_sale) VALUES
(1, 'В День рождения лучше поездом!', 10),
(2, 'Для пассажиров из числа инвалидов', 50),
(3, 'Для пассажиров 60+', 15),
(4, 'Для студентов', 25),
(5, 'На боковое место', 10),
(6, 'Счастливые каникулы', 5),
(7, 'Скидка для медицинских работников', 8),
(8, 'Планируй заранее!', 5),
(9, 'Минеральные воды', 20),
(10, 'Для пассажиров из числа ветеранов', 15),
(11, 'Кавалеры ордена Славы', 25),
(12, 'Каждое 20 число в Казань', 3),
(13, 'Новый год', 1),
(14, 'Полный маршрут', 10),
(15, 'На верхние полки', 12);


INSERT INTO Train (train_name, type) VALUES
('347Й', 'пассажирский поезд'),
('325Е', 'пассажирский поезд'),
('353Е', 'пассажирский поезд'),
('709У', 'скоростной поезд'),
('452Г', 'пассажирский поезд сезонный'),
('769А', 'высокоскороcтной поезд'),
('144Ц', 'скорый круглогодичный поезд'),
('387К', 'пассажирский поезд'),
('311Ш', 'пассажирский поезд'),
('788З', 'высокоскоростной поезд'),
('2Н', 'скорый круглогодичный поезд'),
('451Ф', 'пассажирский поезд сезонный'),
('425О', 'пассажирский поезд'),
('298B', 'скоростной поезд'),
('255Я', 'скоростной поезд');
  

INSERT INTO Timetable (timetable_id, start_date, finish_date) VALUES
(2, '2024-04-04 20:32:00', '2024-04-05 03:32:00'),
(4, '2024-04-12 01:00:00', '2024-04-13 05:07:00'),
(13, '2024-05-11 12:55:00', '2024-05-12 08:58:00'),
(1, '2024-04-25 01:00:00', '2024-04-25 22:50:00'),
(9, '2024-04-24 04:24:00', '2024-04-26 03:40:00'),
(6, '2024-04-17 13:20:00', '2024-04-18 15:04:00'),
(5, '2024-04-14 15:32:00', '2024-04-14 19:19:00'),
(8, '2024-04-16 05:38:00', '2024-04-16 12:41:00'),
(3, '2024-04-21 07:33:00', '2024-04-23 14:47:00'),
(7, '2024-04-21 21:32:00', '2024-04-22 13:05:00'),
(10, '2024-04-02 16:08:00', '2024-04-03 12:51:00'),
(11, '2024-04-08 15:00:00', '2024-04-09 12:49:00'),
(12, '2024-04-10 14:43:00', '2024-04-10 23:59:00'),
(14, '2024-04-27 07:23:00', '2024-04-29 04:17:00'),
(15, '2024-04-06 11:53:00', '2024-04-07 09:29:00'),
(16, '2024-04-01 19:12:00', '2024-04-02 15:12:00'),
(17, '2024-04-21 07:33:00', '2024-04-22 01:03:00'),
(18, '2024-04-27 22:13:00', '2024-04-28 09:17:00')
(19, '2024-04-01 23:02:00', '2024-04-02 15:12:00');
  
  
INSERT INTO Route (route_id, timetable_id, train_name, departure_name, arrival_name) VALUES
(22, 1, '311Ш', 'Уфа', 'Казань'),
(23, 2, '298B', 'Пермь', 'Ижевск'), 
(24, 3, '255Я', 'Набережные Челны', 'Сочи'),
(25, 4, '2Н', 'Москва', 'Пермь'),
(26, 5, '144Ц', 'Екатеринбург', 'Пермь'),
(27, 6, '347Й', 'Новосибирск', 'Москва'),
(28, 7, '709У', 'Москва', 'Санкт-Петербург'),
(29, 8, '353Е', 'Казань', 'Набережные Челны'),
(30, 9, '325Е', 'Уфа', 'Минеральные воды'),
(31, 10, '452Г', 'Нижний Новгород', 'Набережные Челны'),
(32, 11, '769А', 'Москва', 'Самара'),
(33, 12, '451Ф', 'Самара', 'Уфа'),
(34, 13, '425О', 'Калининград', 'Москва'),
(35, 14, '788З', 'Минеральные воды', 'Уфа'),
(36, 15, '144Ц', 'Санкт-Петербург', 'Самара'),
(37, 16, '387К', 'Москва', 'Челябинск');


INSERT INTO Station (station_id, name) VALUES
(1, 'Самара'),
(2, 'Калиниград-Пассажирский (Южный вокзал)'),
(3, 'Пермь 2'),
(4, 'Сочи'),
(5, 'Нижний Новгород Московский (Московский вокзал)'),
(6, 'Минеральные воды'),
(7, 'Санкт-Петербург-Главный (Московский вокзал)'),
(8, 'Набережные Челны'),
(9, 'Ижевск'),
(10, 'Казань-Пассажирская'),
(11, 'Москва Казанская (Казанский вокзал)'),
(12, 'Москва Октябрьская (Ленинградский вокзал)'),
(13, 'Уфа'),
(14, 'Екатеринбург-Пассажирский'),
(15, 'Новосибирск-Главный'),
(16, 'Челябинск-Главный'),
(18, 'Кез'),
(19, 'Смоленск'),
(20, 'Гагарин'),
(21, 'Малая Вишера'),
(22, 'Малышево'),
(23, 'Родионово'),
(24, 'Сызрань'),
(25, 'Саратов-1-Пассажирский'),
(27, 'Саранск-1'),
(26, 'Волгоград-1'),
(17, 'Бугульма');


INSERT INTO Station_Route (route_id, station_id) VALUES
(37, 11),
(37, 17),
(37, 16),
(26, 12),
(26, 7),
(22, 13),
(22, 14),
(22, 10),
(34, 2),
(34, 19),
(34, 20),
(34, 12),
(36, 7),
(36, 21),
(36, 22),
(36, 23),
(36, 1),
(27, 14),
(27, 3),
(23, 3),
(23, 18),
(23, 9),
(35, 6),
(35, 25),
(35, 1),
(35, 13),
(31, 5),
(31, 10),
(31, 8),
(24, 8),
(24, 17),
(24, 24),
(24, 4),
(30, 13),
(30, 26),
(30, 6),
(29, 10),
(29, 8),
(32, 12),
(32, 27),
(32, 24),
(32, 1),
(33, 1),
(33, 13),
(25, 11),
(25, 14),
(25, 3),
(28, 11),
(28, 7);


INSERT INTO Ticket (ticket_id, passenger_id, route_id, sale_id, timetable_id, van, seat, city_start, city_finish) VALUES
(1, 5, 32, NULL, 11, 4, 14, 'Москва', 'Самара'),
(2, 11, 29, 14, 8, 5, 23, 'Казань', 'Набережные Челны'),
(3, 9, 24, 3, 17, 2, 45, 'Набережные Челны', 'Челябинск'),
(4, 10, 35, NULL, 18, 2, 31,  'Саратов', 'Казань'),
(5, 16, 27, 7, 6, 2, 11, 'Новосибирск', 'Москва'),
(6, 2, 22, NULL, 1, 2, 27, 'Уфа', 'Казань'),
(7, 4, 25, 11, 4, 2, 29, 'Москва', 'Пермь'),
(8, 13, 26, 8, 5, 4, 15, 'Екатеринбург', 'Пермь'),
(9, 12, 28, 15, 7, 3, 12, 'Москва', 'Санкт-Петербург'),
(10, 8, 32, NULL, 11, 4, 29, 'Москва', 'Самара'),
(11, 7, 31, 4, 10, 1, 1, 'Нижний Новогород', 'Набережные Челны'),
(12, 7, 32, 4, 11, 4, 13, 'Москва', 'Самара'),
(13, 98, 37, 4, 19, 6, 12, 'Бугульма', 'Челябинск'),
(14, 99, 37, NULL, 19, 6, 10, 'Бугульма', 'Челябинск'),
(15, 3, 33, 10, 12, 5, 34, 'Самара', 'Уфа'),
(16, 6, 26, NULL, 5, 4, 9, 'Екатеринбург', 'Пермь'),
(17, 98, 26, 4, 5, 4, 8, 'Екатеринбург', 'Пермь'),
(18, 7, 26, 4, 5, 4, 7, 'Екатеринбург', 'Пермь'),
(19, 98, 34, 4, 13, 6, 6, 'Калининград', 'Москва');


INSERT INTO Payment (payment_id, passenger_id, ticket_id, amount, amount_sale, date) VALUES
(100, 98, 19, 5585, 4189, '2024-05-04 09:55:00'),
(101, 98, 17, 1762, 1321, '2024-04-13 19:01:00'),
(102, 98, 13, 1620, 1215, '2024-04-01 18:10:00'),
(104, 7, 18, 1762, 1321, '2024-04-01 17:31:00'),
(105, 7, 12, 2352, 1764, '2024-04-05 14:56:00'),
(106, 7, 11, 5653, 4240, '2024-03-29 13:38:00'),
(107, 6, 16, 1762, 1762, '2024-03-11 11:44:00'),
(108, 3, 15, 2002, 1702, '2024-04-02 13:43:00'),
(109, 99, 14, 1620, 1620, '2024-04-02 16:10:00'),
(110, 8, 10, 2290, 2290, '2024-04-08 12:00:00'),
(111, 12, 9, 1704, 1500, '2024-04-20 21:34:00'),
(112, 13, 8, 1762, 1622, '2024-01-14 13:15:00'),
(113, 4, 7, 3956, 2967, '2024-04-07 04:30:00'),
(114, 2, 6, 4798, 4798, '2024-04-02 12:52:00'),
(115, 16, 5, 13289, 12359, '2024-04-17 12:55:00'),
(117, 10, 4, 2691, 2691, '2024-04-01 10:43:00'),
(118, 9, 3, 4150, 3528, '2024-04-02 11:00:00'),
(119, 11, 2, 1913, 1722, '2024-02-19 17:18:00'),
(120, 5, 1, 2290, 2290, '2024-04-08 12:50:00');


/*Получаем список всех маршрутов с количеством проданных билетов*/
  
SELECT r.route_id AS "Маршрут", COUNT(t.ticket_id) AS "Количество билетов"
FROM Route r
JOIN Ticket t ON r.route_id = t.route_id
GROUP BY r.route_id;

/*Получаем список всех станций, находящихся на маршруте Санкт-Петербург-Самара*/

SELECT s.name AS "Список станций"
FROM Station s
JOIN Station_Route rs ON s.station_id = rs.station_id
JOIN Route r ON rs.route_id = r.route_id
WHERE r.departure_name = 'Санкт-Петербург' AND r.arrival_name = 'Самара';

/*Получаем ФИО людей, которые воспользовались скидкой и ее название*/

SELECT DISTINCT p.passenger_id AS "Идентификатор пассажира", p.last_name AS "Фамилия", p.first_name AS "Имя", p.middle_name AS "Отчество", s.name AS "Название скидки"
FROM Passenger p
JOIN Ticket t ON t.passenger_id = p.passenger_id
JOIN Sale s ON s.sale_id = t.sale_id
WHERE t.sale_id is not null
ORDER BY p.passenger_id DESC;
