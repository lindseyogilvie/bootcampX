/* Get the total number of assistance_requests for a student */

SELECT COUNT(assistance_requests.*) as total_assistances, students.name as student
  FROM students
  JOIN assistance_requests ON students.id = student_id
  WHERE name = 'Elliot Dickinson'
  GROUP BY student;