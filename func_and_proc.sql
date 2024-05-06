/* Функция для расчета общей суммы продаж по типу поезда */

CREATE OR REPLACE FUNCTION sales_train_type(f_train_type VARCHAR(50))
RETURNS NUMERIC 
LANGUAGE plpgsql
AS 
$$
DECLARE
    sales NUMERIC = 0.0;
BEGIN
    SELECT SUM(p.amount_sale) INTO sales
    FROM Payment p
    JOIN Ticket t ON p.ticket_id = t.ticket_id
    JOIN Route r ON t.route_id = r.route_id
    JOIN Train tr ON r.train_name = tr.train_name
    WHERE tr.type = f_train_type
    AND t.ticket_id NOT IN (SELECT ticket_id FROM Payment WHERE status = 'возврат');

    RETURN sales;
END;
$$;


/* Функция для получения фио пассажиров по определенному маршруту */

CREATE OR REPLACE FUNCTION get_passengers_on_route(f_route_id INTEGER)
RETURNS TABLE 
    (
        passenger_info VARCHAR(200)
    ) 
LANGUAGE plpgsql
AS 
$$
BEGIN
    RETURN QUERY
    SELECT (p.last_name || ' ' || p.first_name || ' ' || p.middle_name)::VARCHAR(200)
    FROM Ticket t
    JOIN Passenger p ON p.passenger_id = t.passenger_id
    WHERE t.route_id = f_route_id
    AND t.ticket_id NOT IN (SELECT ticket_id FROM Payment WHERE status = 'возврат');
END;
$$;


/* Процедура для добавления нового пассажира */

CREATE OR REPLACE PROCEDURE add_passenger(
    p_passenger_id INTEGER,
    p_last_name VARCHAR(200),
    p_first_name VARCHAR(200),
    p_middle_name VARCHAR(200),
    p_document VARCHAR(70),
    p_information VARCHAR(30),
    p_email VARCHAR(200),
    p_phone_number VARCHAR(30)
) 
LANGUAGE plpgsql
AS
$$
BEGIN
    IF EXISTS (SELECT 1 FROM Passenger WHERE email = p_email) THEN
        RAISE EXCEPTION 'Email % уже существует в базе данных.', p_email;
    END IF;

    IF LENGTH(p_phone_number) >= 11 OR LEFT(p_phone_number, 1) <> '8' THEN
        RAISE EXCEPTION 'Номер телефона должен быть меньше 11 символов и начинаться с "8".';
    END IF;

    INSERT INTO Passenger (passenger_id, last_name, first_name, middle_name, document, information, email, phone_number)
    VALUES (p_passenger_id, p_last_name, p_first_name, p_middle_name, p_document, p_information, p_email, p_phone_number);

    RETURN;
END;
$$;

