
CREATE TABLE SportsComplex(
SportsComplex_PK INT NOT NULL,
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
SportsComplex_PK INT NOT NULL,
ED VARCHAR(50),
ENOfP VARCHAR(50),
ENOfO VARCHAR(50),
EPDate VARCHAR(50),
primary key (Event_PK),
foreign key (SportsComplex_PK) References SportsComplex (SportsComplex_PK)
);

-- There should be more attributes but I don't know which ones, 
--I added the relationships for the 1:M for onesport complex, multisportcomplex and area multivalue 
CREATE TABLE MultiSportComplex(
MultiSportComplex_PK INT NOT NULL, 
ComplexType_PK INT NOT NULL,
primary key (MultiSportComplex_PK),
foreign key (ComplexType_PK) References ComplexType (ComplexType_PK)
);
CREATE TABLE AREA(
MultiSportComplex_PK INT NOT NULL, 
AREA_PK INT NOT NULL,         --Unsure if INT or VARCHAR
LI VARCHAR(50), 
primary key (MultiSportComplex_PK, AREA_PK),
foreign key (MultiSportComplex_PK) References MultiSportComplex (MultiSportComplex_PK)
);

CREATE TABLE OneSportComplex(
OneSportComplex_PK INT NOT NULL,
ComplexType_PK INT NOT NULL,
primary key (OneSportComplex_PK),
foreign key (ComplexType_PK) References ComplexType (ComplexType_PK)
);

-- Everything here includes M:N relationships and Official and event entities
CREATE TABLE holds (
SportsComplex_PK INT NOT NULL,
Event_PK INT NOT NULL,
primary key (SportsComplex_PK, Event_PK), 
foreign key (SportsComplex_PK) References SportsComplex (SportsComplex_PK),
foreign key (Event_PK) References Event (Event_PK)
);

CREATE TABLE Official (
Official_PK INT NOT NULL,
primary key (Official_PK)
);

CREATE TABLE equipment (
Equipment_PK INT NOT NULL,
primary key (Equipment_PK)
);

Create TABLE Officiate (
Event_PK INT NOT NULL,
Official_PK INT NOT NULL,
primary key (Event_PK, Official_PK), 
foreign key (Event_PK) References Event (Event_PK),
foreign key (Official_PK) References Official (Official_PK)
);

Create TABLE Uses (
Event_PK INT NOT NULL,
Equipment_PK INT NOT NULL,
primary key (Event_PK, Equipment_PK), 
foreign key (Event_PK) References Event (Event_PK),
foreign key (Equipment_PK) References Equipment (Equipment_PK)
);



