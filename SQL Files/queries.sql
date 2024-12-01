-- Add your first query after this line, do not remove or edit this line
SELECT SportsComplex.CL, Event.EPDate
FROM SportsComplex, Event, Holds
WHERE Event.ED = 'BOXING' AND 
SportsComplex.SportsComplex_PK = Holds.SportsComplex_PK AND
Event.Event_PK = Holds.Event_PK;

-- Add your second query after this line, do not remove or edit this line
