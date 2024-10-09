--Create a view of jobseekers and their resume + cover letter with pending applications 
CREATE VIEW potential_candidate (applicant_id, applicant_resume, applicant_CL) AS
(SELECT job_seeker_id, resume, coverletter
 FROM Application WHERE status = 'pending');

--Create a view of employers in the technology industry
CREATE VIEW tech_employers AS 
(SELECT industry_Name FROM employer WHERE industry_Name = 'technology');

--Create a view of jobseekers with their education levels joined
CREATE VIEW jobseeker_education_lvl AS 
(SELECT jobseeker.job_seeker_id, jobseeker.jobseeker_name, education.education_lvl
FROM JOBSEEKER
JOIN EDUCATION ON jobseeker.education_id=education.education_id);

--Create a view of jobs with the employer's industry joined
CREATE VIEW employer_jobs AS
SELECT employer.employer_name, employer.industry_name, job.job_title
FROM JOB
JOIN employer ON job.employer_name=employer.employer_name
ORDER BY employer.industry_name;

--Select the distinct employers present in the employer_jobs VIEW
SELECT DISTINCT employer_name FROM employer_jobs;

--Create a view of a count of how many jobs each employer has posted
CREATE VIEW "Employer Job Count" AS
SELECT job.employer_name "Employer", COUNT(job.employer_name) "Number of Jobs"
FROM JOB
GROUP BY job.employer_name;

--Drop (delete) a pre-existing view called Employer Job Count
DROP VIEW "Employer Job Count";