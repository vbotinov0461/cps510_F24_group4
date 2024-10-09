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


-- Additional Skills
INSERT INTO Skills (skill_name) VALUES
('Java'),
('Ruby'),
('PHP'),
('HTML/CSS'),
('React'),
('Node.js'),
('Docker'),
('AWS'),
('Machine Learning'),
('Data Analysis'),
('UI/UX Design'),
('Agile Methodology');

-- Additional JobSeekerSkills
INSERT INTO JobSeekerSkills (skill_name, job_seeker_id) VALUES
('Java', 1),
('Java', 2),
('Java', 5),
('Ruby', 2),
('Ruby', 6),
('Ruby', 1),
('PHP', 3),
('PHP', 1),
('PHP', 7),
('PHP', 5),
('HTML/CSS', 4),
('HTML/CSS', 1),
('HTML/CSS', 3),
('HTML/CSS', 2),
('HTML/CSS', 8),
('React', 5),
('React', 8),
('React', 7),
('React', 9),
('React', 10),s
('Node.js', 6),
('Node.js', 2),
('Node.js', 9),
('Docker', 12),
('Docker', 4),
('Docker', 12),
('AWS', 8),
('AWS', 3),
('AWS', 7),
('Machine Learning', 9),
('Machine Learning', 1),
('Machine Learning', 10),
('Data Analysis', 10),
('Data Analysis', 11),
('Data Analysis', 9),
('Data Analysis', 12),
('UI/UX Design', 1),
('UI/UX Design', 4),
('UI/UX Design', 8),
('UI/UX Design', 6),
('UI/UX Design', 12),
('UI/UX Design', 2),
('Agile Methodology', 12);

-- Additional JobSkills
INSERT INTO JobSkills (skill_name, job_id) VALUES
('Java', 3),
('Ruby', 3),
('PHP', 4),
('HTML/CSS', 4),
('React', 5),
('Node.js', 5),
('Docker', 6),
('AWS', 6),
('Machine Learning', 7),
('Data Analysis', 7),
('UI/UX Design', 8),
('Agile Methodology', 8);

-- Additional Applications
INSERT INTO Application (job_seeker_id, job_id, resume, coverletter, status) VALUES
(4, 3, 'Resume for jobseeker 4', 'Cover letter for jobseeker 4', 'pending'),
(5, 3, 'Resume for jobseeker 5', 'Cover letter for jobseeker 5', 'reviewed'),
(6, 4, 'Resume for jobseeker 6', 'Cover letter for jobseeker 6', 'accepted'),
(7, 4, 'Resume for jobseeker 7', 'Cover letter for jobseeker 7', 'rejected'),
(8, 5, 'Resume for jobseeker 8', 'Cover letter for jobseeker 8', 'pending'),
(9, 5, 'Resume for jobseeker 9', 'Cover letter for jobseeker 9', 'reviewed'),
(10, 6, 'Resume for jobseeker 10', 'Cover letter for jobseeker 10', 'accepted'),
(11, 6, 'Resume for jobseeker 11', 'Cover letter for jobseeker 11', 'rejected'),
(12, 7, 'Resume for jobseeker 12', 'Cover letter for jobseeker 12', 'pending');

-- Additional Employers
INSERT INTO employer(Employer_Name, Email, Password, Industry_Name) VALUES
('Google', 'recruiter@google.com', 'ILoveGoogle123', 'Technology'),
('Amazon', 'recruiter@amazon.com', 'ILoveAmazon123', 'E-commerce'),
('Tesla', 'recruiter@tesla.com', 'ILoveTesla123', 'Automotive'),
('Facebook', 'recruiter@facebook.com', 'ILoveFacebook123', 'Social Media'),
('Netflix', 'recruiter@netflix.com', 'ILoveNetflix123', 'Entertainment'),
('IBM', 'recruiter@ibm.com', 'ILoveIBM123', 'Technology'),
('Oracle', 'recruiter@oracle.com', 'ILoveOracle123', 'Technology'),
('Salesforce', 'recruiter@salesforce.com', 'ILoveSalesforce123', 'Software'),
('Adobe', 'recruiter@adobe.com', 'ILoveAdobe123', 'Software');

-- Additional Educations
INSERT INTO education VALUES
(5, 'Electrical Engineering', 'Bachelor', 'University of Waterloo'),
(6, 'Business Administration', 'MBA', 'York University'),
(7, 'Data Science', 'Master', 'University of British Columbia'),
(8, 'Mechanical Engineering', 'Bachelor', 'McGill University'),
(9, 'Psychology', 'PhD', 'University of Alberta'),
(10, 'Economics', 'Bachelor', 'Queens University'),
(11, 'Biology', 'Master', 'McMaster University'),
(12, 'Computer Science', 'Bachelor', 'University of Ottawa');

-- Additional JobSeekers
INSERT INTO jobseeker VALUES
(4, 'Alice Smith', 'alicesmith@gmail.com', 'AliceSmith123', 5, CURRENT_DATE),
(5, 'Bob Johnson', 'bobjohnson@yahoo.com', 'BobJohnson123', 6, CURRENT_DATE),
(6, 'Carol Williams', 'carolwilliams@hotmail.com', 'CarolWilliams123', 7, CURRENT_DATE),
(7, 'David Brown', 'davidbrown@gmail.com', 'DavidBrown123', 8, CURRENT_DATE),
(8, 'Eva Davis', 'evadavis@yahoo.com', 'EvaDavis123', 9, CURRENT_DATE),
(9, 'Frank Miller', 'frankmiller@hotmail.com', 'FrankMiller123', 10, CURRENT_DATE),
(10, 'Grace Wilson', 'gracewilson@gmail.com', 'GraceWilson123', 11, CURRENT_DATE),
(11, 'Henry Taylor', 'henrytaylor@yahoo.com', 'HenryTaylor123', 12, CURRENT_DATE),
(12, 'Ivy Anderson', 'ivyanderson@hotmail.com', 'IvyAnderson123', 5, CURRENT_DATE);

-- Additional Job Postings
INSERT INTO job VALUES
('Data Scientist', 4, 'Vancouver, BC', 120000, 'Analyze and interpret complex data', CURRENT_DATE, 'Google'),
('Frontend Developer', 5, 'Ottawa, ON', 90000, 'Develop user interfaces for web applications', CURRENT_DATE, 'Amazon'),
('Machine Learning Engineer', 6, 'Montreal, QC', 130000, 'Design and implement machine learning models', CURRENT_DATE, 'Tesla'),
('DevOps Engineer', 7, 'Edmonton, AB', 110000, 'Manage and optimize development operations', CURRENT_DATE, 'Facebook'),
('UI/UX Designer', 8, 'Halifax, NS', 85000, 'Create intuitive user interfaces and experiences', CURRENT_DATE, 'Netflix'),
('Cloud Architect', 9, 'Winnipeg, MB', 140000, 'Design and implement cloud infrastructure', CURRENT_DATE, 'IBM'),
('Database Administrator', 10, 'Regina, SK', 95000, 'Manage and optimize database systems', CURRENT_DATE, 'Oracle'),
('Product Manager', 11, 'Quebec City, QC', 115000, 'Oversee product development and strategy', CURRENT_DATE, 'Salesforce'),
('Security Analyst', 12, 'Victoria, BC', 100000, 'Ensure cybersecurity of systems and networks', CURRENT_DATE, 'Adobe');

COMMIT;
