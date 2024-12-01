INSERT INTO SportsComplex (CL, CCOI, CTOA)
VALUES
('MidTown Sports Complex', 'Jane Doe', 'Football'),
('Uptown Training Center', 'Jane Smith', 'Basketball');

INSERT INTO Event (EPDate, ED, ENOfP, ENOfO)
VALUES
('20241129', 'Tuesday', '360', 'Jane Mary'),
('20241128', 'Monday', '45', 'Aaron Doe');

INSERT INTO Holds (SportsComplex_PK, Event_PK)
VALUES
(1, 1),
(2, 2); 

INSERT INTO Official
VALUES
(),
();

INSERT INTO Equipment
VALUES
(),
();

INSERT INTO Officiate (Event_PK)
VALUES
(1),
(2);

INSERT INTO USES (Event_PK)
VALUES
(1),
(2);

INSERT INTO ComplexType (NOfF, Budget)
VALUES
('123', '1208'),
('470', '89031');

INSERT INTO OneSportComplex (SportsComplex_PK)
VALUES
(1),
(2);

INSERT INTO MultiSportComplex (SportsComplex_PK)
VALUES
(1),
(2);

INSERT INTO Area (LI, MultiSportComplex_PK)
VALUES
('Ben', 1),
('Sam', 2);



