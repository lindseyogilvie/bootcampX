/* List each assignment with a total number of assistance requests with it */

SELECT assignments.id as id, assignments.name as name, day, chapter, COUNT(assistance_requests.*) as assistance_requests
  FROM assignments
  JOIN assistance_requests ON assignments.id = assignment_id
  GROUP BY assignments.id
  ORDER BY assistance_requests DESC;