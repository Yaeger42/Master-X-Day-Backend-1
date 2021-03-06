DROP TABLE IF EXISTS flightStatus;
DROP TABLE IF EXISTS BoardingGates;
DROP TABLE IF EXISTS userFlights;
DROP TABLE IF EXISTS userFlightStatus;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS flights;
DROP TABLE IF EXISTS location;

CREATE TABLE flightStatus(
    Id serial ,
    Name varchar(50),
    PRIMARY KEY (Id)
);

CREATE TABLE userFlightStatus(
    Id serial,
    Name varchar(50),
    PRIMARY KEY (Id)
);

CREATE TABLE location(
    Id serial,
    City varchar(50),
    Country varchar(25),
    PRIMARY KEY (Id)
);

CREATE TABLE users(
    Id serial,
    FirstName varchar(200),
    LastName varchar(200),
    Phone varchar(30),
    Gender varchar(2),
    Address varchar(100),
    PRIMARY KEY (Id)
);

CREATE TABLE boardingGates(
    Id serial,
    Name varchar(50),
    PRIMARY KEY (Id)
);


CREATE TABLE flights(
    Id serial PRIMARY KEY,
    DestinationId INT,
    OriginId INT,
    ArrivalTime timestamp,
    DepartureTime timestamp,
    AmountOfPassengers INT,
    BoardingGateId INT,
    flightStatusId INT,

    CONSTRAINT fk_DestinationId
    FOREIGN KEY (DestinationId) REFERENCES location(Id),

    CONSTRAINT fk_OriginId
    FOREIGN KEY (OriginId) REFERENCES location(Id),

    CONSTRAINT fk_boardingGateId
    FOREIGN KEY (BoardingGateId) REFERENCES boardingGates(Id),

    CONSTRAINT fk_statusId
    FOREIGN KEY (flightStatusId) references  flightStatus(Id)
);


CREATE TABLE userFlights(
    userId INT,
    flightId INT,
    userFlightStatusId INT,

    CONSTRAINT  fk_userFlightStatusId
    FOREIGN KEY (userFlightStatusId) REFERENCES userFlightStatus(Id),

    CONSTRAINT fk_userId
    FOREIGN KEY (userId) REFERENCES users(Id),

    CONSTRAINT fk_flightId
    FOREIGN KEY (flightId) REFERENCES flights(Id)
);


