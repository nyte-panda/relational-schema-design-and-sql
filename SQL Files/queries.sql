-- Add your first query after this line, do not remove or edit this line
SELECT SportsComplex.CL, Event.EPDate
FROM Event, SportsComplex, Holds
WHERE Event.ED LIKE '%Boxing%'
  AND SportsComplex.SportsComplex_PK = Holds.SportsComplex_PK
  AND Event.Event_PK = Holds.Event_PK
ORDER BY Event.Event_PK, SportsComplex.SportsComplex_PK
;

-- Add your second query after this line, do not remove or edit this line
