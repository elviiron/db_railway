# Физическая модель #

### Таблица Пассажир ###

|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| passenger_id  | Идентификатор | INTEGER       | PRIMARY KEY   |
| last_name     | Фамилия пассажира  | VARCHAR(200) | NOT NULL  |
| first_name     | Имя пассажира  | VARCHAR(200) | NOT NULL  |
| middle_name     | Отчество пассажира  | VARCHAR(200) | NULL  |
| document     | Документ пассажира  | VARCHAR(70) | NOT NULL  |
| information     | Серия и номер документа  | VARCHAR(30) | NOT NULL  |
| email     | Почта пассажира  | VARCHAR(200) | UNIQUE  |
| phone number     | Номер телефона  | VARCHAR(30) | NOT NULL  |


### Таблица Билет ###

|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| ticket_id  | Идентификатор | INTEGER       | PRIMARY KEY   |
| passenger_id     | Идентификатор пассажира  | INTEGER | FOREIGN KEY |
| route_id     | Идентификатор маршрута  | INTEGER | FOREIGN KEY |
| sale_id     | Идентификатор скидки  | INTEGER | FOREIGN KEY |
| timetable_id     | Идентификатор расписания  | INTEGER | FOREIGN KEY |
| van     | Номер вагона  | INTEGER | NOT NULL |
| seat     | Номер места | INTEGER | NOT NULL |
| city_start     | Откуда | VARCHAR(100) | NOT NULL |
| city_finish    | Куда | VARCHAR(100) | NOT NULL |



### Таблица Платеж ###

|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| payment_id  | Идентификатор | INTEGER       | PRIMARY KEY   |
| passenger_id     | Идентификатор пассажира  | INTEGER | FOREIGN KEY |
| ticket_id     | Идентификатор билета  | INTEGER | FOREIGN KEY |
| amount     | Стоимость билета  | NUMERIC| NOT NULL |
| amount_sale    | Стоимость билета со скидкой(или без) | NUMERIC| NULL |
| date     | Дата платежа  | TIMESTAMP | NOT NULL |


### Таблица Расписание ###

|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| timetable_id  | Идентификатор | INTEGER       | PRIMARY KEY   |
| start_date     | Время отправления  | TIMESTAMP | NOT NULL |
| finish_date     | Время прибытия | TIMESTAMP | NOT NULL |


### Таблица Маршрут ###

|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| route_id  | Идентификатор | INTEGER       | PRIMARY KEY   |
| timetable_id     | Идентификатор расписания  | INTEGER | FOREIGN KEY |
| train_name     | Номер поезда  | VARCHAR(20) | FOREIGN KEY |
| departure_name     | Место отправления | VARCHAR(100) | NOT NULL |
| arrival_name     | Место прибытия | VARCHAR(100) | NOT NULL |


### Таблица Поезд ###

|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| train_name  | Номер поезда |  VARCHAR(20)       | PRIMARY KEY   |
| type     | Тип поезда | VARCHAR(50) | NOT NULL |


### Таблица Маршрут станции ###

|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| station_id     | Последовательность станций | INTEGER | PRIMARY KEY FOREIGN KEY |
| route_id     | Идентификатор маршрута  | INTEGER | PRIMARY KEY FOREIGN KEY |



### Таблица Станция ###

|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| station_id  | Идентификатор | INTEGER       | PRIMARY KEY   |
| name     | Название станции | VARCHAR(50) | NOT NULL |


### Таблица Скидка ###

|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| sale_id  | Идентификатор | INTEGER       | PRIMARY KEY   |
| name     | Название скидки | VARCHAR(50) | NOT NULL |
| procent_sale     | Процент скидки | INTEGER | NOT NULL |


### Таблица История билета ###

|   Название    |    Описание   |  Тип данных   | Ограничение   |
| ------------- | ------------- | ------------- | ------------- |
| history_id  | Идентификатор | INTEGER       | PRIMARY KEY   |
| ticket_id     | Идентификатор билета  | INTEGER | FOREIGN KEY |
| action     | Действие с билетом | VARCHAR(50) | NOT NULL |
| date_start     | Время начала изменения  | TIMESTAMP | NOT NULL |
| date_finish     | Время окончания изменения  | TIMESTAMP | NULL |






















































