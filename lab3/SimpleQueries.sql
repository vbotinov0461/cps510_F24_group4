-- Retrieve distinct jobseeker IDs and order them 
SELECT DISTINCT job_seeker_id
FROM Application
ORDER BY job_seeker_id ASC;

-- Count the number of distinct skills required for each job by grouping by job_id
SELECT job_id, COUNT(DISTINCT skill_name) AS distinct_skill_count
FROM JobSkills
GROUP BY job_id;

-- Retrieve distinct skill names and order them alphabetically
SELECT DISTINCT skill_name
FROM Skills
ORDER BY skill_name ASC;

-- Retrieve all jobseekers
SELECT *
FROM jobseeker;


/* Retrieve the name of the jobseeker with ID number4 */
SELECT Jobseeker_Name
FROM jobseeker
WHERE Job_seeker_Id = 4;

/* Select job postings where the name of the employer is Apple */
SELECT *
FROM job
WHERE Employer_Name = 'Apple';

/* Select job seekers who have a Master's in Computer Science from TMU*/
SELECT *
FROM jobseeker
WHERE education_id = 2;

-- 
SELECT j.Jobseeker_Name
FROM education e, jobseeker j
WHERE Education_Lvl = 'Master' AND e.Education_Id = j.Education_Id;