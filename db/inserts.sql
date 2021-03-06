
INSERT INTO public.location (id, city, country) VALUES (1, 'BOGOTA', 'COLOMBIA');
INSERT INTO public.location (id, city, country) VALUES (2, 'MARACAIBO', 'VENEZUELA');
INSERT INTO public.location (id, city, country) VALUES (3, 'MEDELLIN', 'COLOMBIA');
INSERT INTO public.location (id, city, country) VALUES (4, 'CDMX', 'MEXICO');
INSERT INTO public.location (id, city, country) VALUES (5, 'MADRID', 'SPAIN');
INSERT INTO public.location (id, city, country) VALUES (6, 'BUENOS AIRES', 'ARGENTINA');
INSERT INTO public.location (id, city, country) VALUES (7, 'GUADALAJARA', 'MEXICO');
INSERT INTO public.location (id, city, country) VALUES (8, 'MIAMI FL', 'USA');
INSERT INTO public.location (id, city, country) VALUES (9, 'SAN FRANCISCO CA', 'USA');

SELECT pg_catalog.setval('public.location_id_seq', 9, true);

INSERT INTO public.flightstatus (id, name) VALUES (1, 'OnFlight');
INSERT INTO public.flightstatus (id, name) VALUES (2, 'Delayed');
INSERT INTO public.flightstatus (id, name) VALUES (3, 'Arrived');
INSERT INTO public.flightstatus (id, name) VALUES (4, 'OnBoarding');
INSERT INTO public.flightstatus (id, name) VALUES (5, 'Canceled');

SELECT pg_catalog.setval('public.flightstatus_id_seq', 5, true);

INSERT INTO public.userflightstatus (id,name) VALUES (1, 'Taken');
INSERT INTO public.userflightstatus (id,name) VALUES (2, 'Missed');

SELECT pg_catalog.setval('public.userflightstatus_id_seq', 2, true);

INSERT INTO public.boardingGates (id, name) VALUES (1, 'A-1');
INSERT INTO public.boardingGates (id, name) VALUES (2, 'A-2');
INSERT INTO public.boardingGates (id, name) VALUES (3, 'A-3');
INSERT INTO public.boardingGates (id, name) VALUES (4, 'A-4');
INSERT INTO public.boardingGates (id, name) VALUES (5, 'A-5');

SELECT pg_catalog.setval('public.boardinggates_id_seq', 5, true);


INSERT INTO public.users (id, firstname, lastname, phone, gender, address) VALUES (1, 'Crihstian Camilo', 'Molina', '111', NULL, NULL);
INSERT INTO public.users (id, firstname, lastname, phone, gender, address) VALUES (2, 'Diego', 'Casillas', '111', NULL, NULL);
INSERT INTO public.users (id, firstname, lastname, phone, gender, address) VALUES (3, 'Passenger', 'LastName', '111', NULL, NULL);
INSERT INTO public.users (id, firstname, lastname, phone, gender, address) VALUES (4, 'Passenger', 'LastName', '111', NULL, NULL);
INSERT INTO public.users (id, firstname, lastname, phone, gender, address) VALUES (5, 'Passenger', 'LastName', '111', NULL, NULL);
INSERT INTO public.users (id, firstname, lastname, phone, gender, address) VALUES (6, 'Passenger', 'LastName', '111', NULL, NULL);
INSERT INTO public.users (id, firstname, lastname, phone, gender, address) VALUES (7, 'Passenger', 'LastName', '111', NULL, NULL);
INSERT INTO public.users (id, firstname, lastname, phone, gender, address) VALUES (8, 'Passenger', 'LastName', '111', NULL, NULL);
INSERT INTO public.users (id, firstname, lastname, phone, gender, address) VALUES (9, 'Passenger', 'LastName', '111', NULL, NULL);
INSERT INTO public.users (id, firstname, lastname, phone, gender, address) VALUES (10, 'Passenger', 'LastName', '111', NULL, NULL);
INSERT INTO public.users (id, firstname, lastname, phone, gender, address) VALUES (11, 'Passenger', 'LastName', '111', NULL, NULL);
INSERT INTO public.users (id, firstname, lastname, phone, gender, address) VALUES (12, 'Passenger', 'LastName', '111', NULL, NULL);

SELECT pg_catalog.setval('public.users_id_seq', 12, true);


INSERT INTO public.flights (id, destinationid, originid, arrivaltime, departuretime, amountofpassengers, boardinggateid, flightstatusid) VALUES (1, 1, 2, NULL, '2021-03-06 13:59:43.955205', 50, 1, 1);
INSERT INTO public.flights (id, destinationid, originid, arrivaltime, departuretime, amountofpassengers, boardinggateid, flightstatusid) VALUES (2, 2, 3, NULL, '2021-03-06 13:59:43.955205', 40, 4, 1);
INSERT INTO public.flights (id, destinationid, originid, arrivaltime, departuretime, amountofpassengers, boardinggateid, flightstatusid) VALUES (3, 2, 3, NULL, '2021-03-06 13:59:43.955205', 40, 4, 1);
INSERT INTO public.flights (id, destinationid, originid, arrivaltime, departuretime, amountofpassengers, boardinggateid, flightstatusid) VALUES (4, 2, 3, NULL, '2021-03-06 13:59:43.955205', 40, 4, 1);
INSERT INTO public.flights (id, destinationid, originid, arrivaltime, departuretime, amountofpassengers, boardinggateid, flightstatusid) VALUES (5, 2, 3, NULL, '2021-03-06 13:59:43.955205', 40, 4, 1);
INSERT INTO public.flights (id, destinationid, originid, arrivaltime, departuretime, amountofpassengers, boardinggateid, flightstatusid) VALUES (6, 2, 3, NULL, '2021-03-06 13:59:43.955205', 40, 4, 1);

SELECT pg_catalog.setval('public.flights_id_seq', 6, true);

INSERT INTO public.userflights (userid, flightid, userflightstatusid) VALUES (1, 1, 1);
INSERT INTO public.userflights (userid, flightid, userflightstatusid) VALUES (2, 2, 1);
INSERT INTO public.userflights (userid, flightid, userflightstatusid) VALUES (3, 2, 1);
INSERT INTO public.userflights (userid, flightid, userflightstatusid) VALUES (4, 2, 1);
INSERT INTO public.userflights (userid, flightid, userflightstatusid) VALUES (5, 2, 1);
INSERT INTO public.userflights (userid, flightid, userflightstatusid) VALUES (6, 2, 1);
INSERT INTO public.userflights (userid, flightid, userflightstatusid) VALUES (7, 2, 1);
INSERT INTO public.userflights (userid, flightid, userflightstatusid) VALUES (8, 2, 1);
INSERT INTO public.userflights (userid, flightid, userflightstatusid) VALUES (9, 2, 1);
INSERT INTO public.userflights (userid, flightid, userflightstatusid) VALUES (10, 2, 1);
INSERT INTO public.userflights (userid, flightid, userflightstatusid) VALUES (11, 2, 1);
INSERT INTO public.userflights (userid, flightid, userflightstatusid) VALUES (12, 2, 1);
