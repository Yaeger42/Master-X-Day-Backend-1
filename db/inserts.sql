INSERT INTO location (id, city, country) VALUES (1, 'BOGOTA', 'COLOMBIA');
INSERT INTO location (id, city, country) VALUES (2, 'MARACAIBO', 'VENEZUELA');
INSERT INTO location (id, city, country) VALUES (3, 'MEDELLIN', 'COLOMBIA');
INSERT INTO location (id, city, country) VALUES (4, 'CDMX', 'MEXICO');
INSERT INTO location (id, city, country) VALUES (5, 'MADRID', 'SPAIN');
INSERT INTO location (id, city, country) VALUES (6, 'BUENOS AIRES', 'ARGENTINA');
INSERT INTO location (id, city, country) VALUES (7, 'GUADALAJARA', 'MEXICO');
INSERT INTO location (id, city, country) VALUES (8, 'MIAMI FL', 'USA');
INSERT INTO location (id, city, country) VALUES (9, 'SAN FRANCISCO CA', 'USA');

SELECT pg_catalog.setval('location_id_seq', 9, true);

INSERT INTO flightstatus (id, name) VALUES (1, 'OnFlight');
INSERT INTO flightstatus (id, name) VALUES (2, 'Delayed');
INSERT INTO flightstatus (id, name) VALUES (3, 'Arrived');
INSERT INTO flightstatus (id, name) VALUES (4, 'OnBoarding');
INSERT INTO flightstatus (id, name) VALUES (5, 'Canceled');

SELECT pg_catalog.setval('flightstatus_id_seq', 5, true);

INSERT INTO boardingGates (id, name) VALUES (1, 'A-1');
INSERT INTO boardingGates (id, name) VALUES (2, 'A-2');
INSERT INTO boardingGates (id, name) VALUES (3, 'A-3');
INSERT INTO boardingGates (id, name) VALUES (4, 'A-4');
INSERT INTO boardingGates (id, name) VALUES (5, 'A-5');

SELECT pg_catalog.setval('boardinggates_id_seq', 5, true);