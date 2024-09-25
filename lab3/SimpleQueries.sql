-- Retrieve distinct jobseeker IDs and order them 
SELECT DISTINCT jobseeker_id
FROM Application
ORDER BY jobseeker_id ASC;

-- Count the number of distinct skills required for each job by grouping by job_id
SELECT job_id, COUNT(DISTINCT skill_name) AS distinct_skill_count
FROM JobSkills
GROUP BY job_id;

-- Retrieve distinct skill names and order them alphabetically
SELECT DISTINCT skill_name
FROM Skills
ORDER BY skill_name ASC;
