/* Get the total number of assignments for each day of bootcamp */

SELECT day, COUNT(id)
  FROM assignments
  GROUP BY day
  ORDER BY day;