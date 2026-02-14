SELECT t.id
FROM Weather y
CROSS JOIN Weather t
WHERE DATEDIFF(y.recordDate, t.recordDate)=-1 AND t.temperature>y.temperature;