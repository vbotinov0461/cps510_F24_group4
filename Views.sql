--Create a view of jobseekers and their resume + cover letter with pending applications 
CREATE VIEW potential_candidate (applicant_id, applicant_resume, applicant_CL) AS
(SELECT job_seeker_id, resume, coverletter
 FROM Application WHERE status = 'pending');

--Create a view of employers in the technology industry
CREATE VIEW tech_employers AS 
(SELECT industry_Name FROM employer WHERE industry_Name = 'technology');