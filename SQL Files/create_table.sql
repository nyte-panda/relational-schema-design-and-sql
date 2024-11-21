
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

-- There should be more attributes but I don't know which ones, 
--I added the relationships for the 1:M for onesport complex, multisportcomplex and area multivalue 
CREATE TABLE MultiSportComplex(
MultiSportComplex_PK INT NOT NULL, 
ComplexType_PK INT NOT NULL,
primary key (MultiSportComplex_PK),
foreign key (ComplexType_PK) References ComplexType (ComplexType_PK)
);
CREATE TABLE AREA(
AREA_PK NOT NULL,
MultiSportComplex_PK INT NOT NULL, 
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

-- 



