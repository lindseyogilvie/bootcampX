/* Get the total number of assistance_requests for a teacher */

SELECT COUNT(assistance_requests.*) as total_assistances, teachers.name as teacher
  FROM assistance_requests
  JOIN teachers ON teacher_id = teachers.id
  WHERE teachers.name = 'Waylon Boehm'
  GROUP BY teacher;