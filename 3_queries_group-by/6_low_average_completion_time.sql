/* Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment */

SELECT students.name as student, avg(assignment_submissions.duration) as average_completion_time, avg(assignments.duration) as estimated_completion_time
  FROM students
  JOIN assignment_submissions ON students.id = student_id
  JOIN assignments ON assignment_id = assignments.id
  WHERE students.end_date IS NULL
  GROUP BY student
  HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
  ORDER BY average_completion_time;