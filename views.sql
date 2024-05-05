/* Представление для для списка пассажиров с информацией о билетах */

CREATE VIEW Passenger_Ticket_Info AS
SELECT p.passenger_id AS "ID пассажира", 
       p.last_name AS "Фамилия",
       p.first_name AS "Имя", 
       p.middle_name AS "Отчество", 
       r.train_name AS "Номер поезда",
       t.van AS "Номер вагона",
       t.seat AS "Номер места",
       t.city_start AS "Город отправления",
       t.city_finish AS "Город прибытия", 
       ti.start_date AS "Время отправления",
       ti.finish_date AS "Время прибытия"
FROM Passenger p
JOIN Ticket t ON p.passenger_id = t.passenger_id
JOIN Route r ON t.route_id = r.route_id
JOIN Timetable ti ON t.timetable_id = ti.timetable_id;


/* Представление для станций на маршруте */

SELECT r.route_id AS "ID маршрута", 
       r.departure_name AS "Место отправления",
       r.arrival_name AS "Место прибытия",
       s.name AS "Название станции"
FROM Route r
JOIN Station_Route sr ON r.route_id = sr.route_id
JOIN Station s ON sr.station_id = s.station_id;
