SELECT start.machine_id, round(AVG(end.timestamp - start.timestamp),3) AS processing_time 
FROM Activity start
JOIN Activity end
ON start.machine_id = end.machine_id AND start.process_id = end.process_id
AND start.activity_type='start' and end.activity_type='end'
GROUP BY machine_id;



--OR--------------------------------------------------------------

SELECT
a.machine_id,
ROUND(
AVG(CASE WHEN a.activity_type = 'end' THEN a.timestamp END) -
AVG(CASE WHEN a.activity_type = 'start' THEN a.timestamp END), 3
) AS processing_time
FROM
activity a
GROUP BY
a.machine_id;
