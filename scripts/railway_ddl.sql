CREATE TABLE Passenger (
      passenger_id INTEGER NOT NULL PRIMARY KEY,
      last_name VARCHAR(200) NOT NULL,
      first_name VARCHAR(200) NOT NULL,
      middle_name VARCHAR(200),
      document VARCHAR(70) NOT NULL,
      information VARCHAR(30) NOT NULL,
      email VARCHAR(200) NOT NULL UNIQUE,
      phone_number VARCHAR(30) NOT NULL
);


CREATE TABLE Ticket (
      ticket_id INTEGER NOT NULL PRIMARY KEY,
      passenger_id INTEGER,
      route_id INTEGER,
      sale_id INTEGER,
      history_id INTEGER,
      timetable_id INTEGER,
      van INTEGER NOT NULL,
      seat INTEGER NOT NULL,
      FOREIGN KEY (passenger_id) REFERENCES Passenger (passenger_id),
      FOREIGN KEY (route_id) REFERENCES Route (route_id),
      FOREIGN KEY (sale_id) REFERENCES Sale (sale_id) ON DELETE SET NULL,
      FOREIGN KEY (history_id) REFERENCES History(history_id),
      FOREIGN KEY (timetable_id) REFERENCES Timetable(timetable_id)
);


CREATE TABLE Payment (
      payment_id INTEGER NOT NULL PRIMARY KEY,
      passenger_id INTEGER,
      ticket_id INTEGER,
      status VARCHAR(30) NOT NULL,
      amount NUMERIC NOT NULL,
      date TIMESTAMP WITHOUT TIME ZONE NOT NULL,
      FOREIGN KEY (passenger_id) REFERENCES Passenger(passenger_id),
      FOREIGN KEY (ticket_id) REFERENCES Ticket(ticket_id)
);


CREATE TABLE Timetable (
      timetable_id INTEGER PRIMARY KEY,
      start_date TIMESTAMP WITHOUT TIME ZONE NOT NULL,
      finish_date TIMESTAMP WITHOUT TIME ZONE NOT NULL
);


CREATE TABLE Route (
      route_id INTEGER NOT NULL PRIMARY KEY,
      timetable_id INTEGER,
      departure_name VARCHAR(100) NOT NULL,
      arrival_name VARCHAR(100) NOT NULL,
      FOREIGN KEY (timetable_id) REFERENCES Timetable(timetable_id)
);


CREATE TABLE Train (
      train_id INTEGER NOT NULL PRIMARY KEY,
      route_id INTEGER,
      type VARCHAR(50) NOT NULL,
      name VARCHAR(20) NOT NULL,
      FOREIGN KEY (route_id) REFERENCES Route(route_id)
);


CREATE TABLE Station_Route (
      station_route_id INTEGER NOT NULL PRIMARY KEY,
      route_id INTEGER,
      station_id INTEGER,
      FOREIGN KEY (route_id) REFERENCES Route(route_id),
      FOREIGN KEY (station_id) REFERENCES Station(station_id)
);


CREATE TABLE Station (
      station_id INTEGER NOT NULL PRIMARY KEY,
      name VARCHAR(50) NOT NULL
);


CREATE TABLE Sale (
      sale_id INTEGER NOT NULL PRIMARY KEY,
      ticket_id INTEGER,
      name VARCHAR(50) NOT NULL,
      procent_sale INTEGER NOT NULL,
      FOREIGN KEY (ticket_id) REFERENCES Ticket(ticket_id)
);


CREATE TABLE History_Table (
      history_id INTEGER NOT NULL PRIMARY KEY,
      ticket_id INTEGER,
      action VARCHAR(30) NOT NULL,
      date_start TIMESTAMP WITHOUT TIME ZONE NOT NULL,
      date_finish TIMESTAMP WITHOUT TIME ZONE NOT NULL,
      FOREIGN KEY (ticket_id) REFERENCES Ticket(ticket_id)
);
      
      
  
