/* Get the average duration of assistance requests for each cohort */

SELECT cohorts.name as name, AVG(completed_at - started_at) as average_assistance_request_duration
  FROM assistance_requests
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
  GROUP BY cohorts.name
  ORDER BY average_assistance_request_duration;
