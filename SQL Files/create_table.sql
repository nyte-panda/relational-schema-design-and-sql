
CREATE TABLE SportsComplex(
SportComplex_PK INT NOT NULL,
CL VARCHAR(50),
CCOI VARCHAR(50),
CTOA VARCHAR(50),
primary key (SportsComplex_PK)
);

CREATE TABLE EVENT(
Event INT NOT NULL,
ED VARCHAR(50),
ENOfP VARCHAR(50),
ENOfO VARCHAR(50),
EPDate VARCHAR(50),
primary key (Event),
foreign key (SportsComplex_PK)
);

