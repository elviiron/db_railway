/* Триггер для проверки формата электронной почты */

CREATE OR REPLACE FUNCTION check_email_format()
   RETURNS TRIGGER 
   LANGUAGE plpgsql AS 
$$
BEGIN
    IF NEW.email !~* '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$' THEN
        RAISE EXCEPTION 'Некорректный формат электронной почты';
    END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER check_email_format_trigger
BEFORE INSERT OR UPDATE ON Passenger
FOR EACH ROW
EXECUTE FUNCTION check_email_format();


/* Триггер для автоматической установки текущей даты и времени при добавлении нового платежа */

CREATE OR REPLACE FUNCTION set_current_date()
   RETURNS TRIGGER 
   LANGUAGE plpgsql AS 
$$
BEGIN
    NEW.date := to_char(NOW() AT TIME ZONE 'Europe/Moscow', 'YYYY-MM-DD HH24:MI:SS');
    RETURN NEW;
END;
$$;

CREATE TRIGGER set_current_date_trigger
BEFORE INSERT ON Payment
FOR EACH ROW
EXECUTE FUNCTION set_current_date();


/* Триггер для проверки места отправления и места прибытия */

CREATE OR REPLACE FUNCTION check_route_names()
   RETURNS TRIGGER
   LANGUAGE plpgsql AS 
$$
BEGIN
    IF NEW.arrival_name = NEW.departure_name THEN
        RAISE EXCEPTION 'Названия места отправления и места прибытия не должны совпадать';
    END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER check_route_names_trigger
BEFORE INSERT OR UPDATE ON Route
FOR EACH ROW
EXECUTE FUNCTION check_route_names();
