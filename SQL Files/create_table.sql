
CREATE TABLE SportsComplex(
SportComplex_PK INT NOT NULL,
CL VARCHAR(50),
CCOI VARCHAR(50),
CTOA VARCHAR(50),
primary key (SportsComplex_PK)
);

CREATE TABLE ComplexType (
ComplexType_PK INT NOT NULL,
Budget VARCHAR(50),
NOfF VARCHAR(50),
PRIMARY KEY (ComplexType_PK)
);

CREATE TABLE EVENT(
Event_PK INT NOT NULL,
ED VARCHAR(50),
ENOfP VARCHAR(50),
ENOfO VARCHAR(50),
EPDate VARCHAR(50),
primary key (Event_PK),
foreign key (SportsComplex_PK)
);



