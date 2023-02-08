/* Get the name of all teachers that performed an assistance request for a cohort, and the number of assistances they performed */

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.*) as total_assistances
  FROM teachers
  JOIN assistance_requests ON teachers.id = teacher_id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
  WHERE cohorts.name = 'JUL02'
  GROUP BY teacher, cohort
  ORDER BY teacher;
