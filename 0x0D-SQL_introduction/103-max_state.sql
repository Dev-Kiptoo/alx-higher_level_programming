--Selecting the maximum value from the temperatura grouping by the stater and ordering by the state
SeLECT state, MAX(value) AS max_temp FROM temperatures GROUP BY state ORDER BY state;
