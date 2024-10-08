-- Insert data into Skills table
INSERT INTO Skills (skill_name) VALUES ('C/C++');
INSERT INTO Skills (skill_name) VALUES ('JavaScript');
INSERT INTO Skills (skill_name) VALUES ('Python ');
INSERT INTO Skills (skill_name) VALUES ('SQL');

-- Insert data into JobSeekerSkills table
INSERT INTO JobSeekerSkills (skill_name, job_seeker_id) VALUES ('JavaScript', 1);
INSERT INTO JobSeekerSkills (skill_name, job_seeker_id) VALUES ('Python', 2);
INSERT INTO JobSeekerSkills (skill_name, job_seeker_id) VALUES ('SQL', 3);
INSERT INTO JobSeekerSkills (skill_name, job_seeker_id) VALUES ('C/C++', 3);

-- Insert data into JobSkills table
INSERT INTO JobSkills (skill_name, job_id) VALUES ('JavaScript', 1);
INSERT INTO JobSkills (skill_name, job_id) VALUES ('Python', 1);
INSERT INTO JobSkills (skill_name, job_id) VALUES ('SQL', 2);
INSERT INTO JobSkills (skill_name, job_id) VALUES ('SQL', 2);
INSERT INTO JobSkills (skill_name, job_id) VALUES ('C/C++', 2);

-- Insert data into Application table
INSERT INTO Application (job_seeker_id, job_id, resume, coverletter, status) 
VALUES (1, 1, 'Resume for jobseeker 1', 'Cover letter for jobseeker 1', 'pending');
INSERT INTO Application (job_seeker_id, job_id, resume, coverletter, status) 
VALUES (2, 1, 'Resume for jobseeker 2', 'Cover letter for jobseeker 2', 'reviewed');
INSERT INTO Application (job_seeker_id, job_id, resume, coverletter, status) 
VALUES (3, 2, 'Resume for jobseeker 3', 'Cover letter for jobseeker 3', 'accepted');

-- Insert employers into the employer table 
INSERT INTO employer(Employer_Name, Email, Password, Industry_Name) VALUES ('Apple', 'recruiter@apple.com', 'ILoveApple123', 'Technology');
INSERT INTO employer(Employer_Name, Email, Password, Industry_Name) VALUES ('Microsoft', 'recruiter@microsoft.com', 'ILoveMicrosoft123', 'Technology');
INSERT INTO employer(Employer_Name, Email, Password, Industry_Name) VALUES ('Walmart', 'recruiter@walmart.com', 'ILoveWalmart123', 'Retail');

-- Insert educations into the education table 
INSERT INTO education VALUES (1, 'Computer Science', 'Bachelor', 'TMU');
INSERT INTO education VALUES (2, 'Computer Engineering', 'Master', 'TMU');
INSERT INTO education VALUES (3, 'Computer Science', 'Master', 'University of Toronto');
INSERT INTO education(Education_Id, Education_Lvl, School_Name) VALUES ('4', 'High School Diploma', 'Toronto High School');

-- Insert jobseekers into the jobseeker table 
INSERT INTO jobseeker VALUES (1, 'John Doe', 'johndoe@gmail.com', 'JohnDoe123', 4, CURRENT_DATE);
INSERT INTO jobseeker VALUES (2, 'Jane Doe', 'janeode@yahoo.com', 'JaneDoe123', 3, CURRENT_DATE);
INSERT INTO jobseeker VALUES (3, 'Joe Johnson', 'joejohnson@hotmail.com', 'JoeJohn123', 2, CURRENT_DATE);

-- Insert job postings into the jobpostings table 
INSERT INTO job(Job_Id, Employer_Name) VALUES (5, 'Apple');
INSERT INTO job VALUES ('Software Engineer', 1, 'Toronto, ON', 100000, 'Program software please', CURRENT_DATE, 'Apple');
INSERT INTO job VALUES ('App Developer', 2, 'London, ON', 200000, 'Program more software please', CURRENT_DATE, 'Microsoft');
INSERT INTO job VALUES ('Store Manager', 3, 'Calgary, AB', 80000, 'Manage the walmart store', CURRENT_DATE, 'Walmart');

COMMIT;
