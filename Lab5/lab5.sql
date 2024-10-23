-- List the names of all jobseekers who have applied to a job posted by Graham Construction and order in ascending order
SELECT js.job_seeker_id, jobseeker_name
FROM jobseeker js, application a
WHERE a.job_seeker_id = js.job_seeker_id
AND EXISTS
    (SELECT *
    FROM job jo
    WHERE jo.employer_name = 'Graham Construction'
    AND jo.job_id = a.job_id)
ORDER BY js.job_seeker_id ASC;

-- List all jobs posted by FreshBooks or Sobeys Inc.
SELECT job_id, job_title, location_name, salary, employer_name
FROM job 
WHERE employer_name = 'FreshBooks'
UNION 
SELECT job_id, job_title, location_name, salary, employer_name
FROM JOB
WHERE employer_name = 'Sobeys Inc.';

-- Count how many jobs are posted by employers in the Technology industry
SELECT COUNT(*) 
FROM job j, employer e
WHERE e.industry_name = 'Technology' AND j.employer_name = e.employer_name;

-- Select all jobs in the industry of Technology and join with the industry name from the employer table
SELECT j.job_title, e.industry_name, j.location_name, j.salary 
FROM job j
INNER JOIN employer e ON j.employer_name=e.employer_name
WHERE e.industry_name = 'Technology';

-- Count how many bachelor's degrees each school has and group by school name
SELECT COUNT(education_lvl), school_name
FROM education
WHERE education_lvl = 'Bachelors'
GROUP BY school_name;










