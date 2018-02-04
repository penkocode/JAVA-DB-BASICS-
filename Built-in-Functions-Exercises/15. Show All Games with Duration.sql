SELECT g.name AS game, 
  IF(HOUR(g.start) < 12,'Morning',
  IF(HOUR(g.start) < 18,'Afternoon',
  IF(HOUR(g.start) < 24,'Evening','None'))) 
  AS `Part of the Day`,
      if(g.duration< 4, 'Extra Short',
      if(g.duration< 7, 'Short',
      if(g.duration< 11, 'Long', 'Extra Long'))) as `Duration`
FROM games AS g ORDER BY name;