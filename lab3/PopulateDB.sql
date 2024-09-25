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
INSERT INTO Application (jobseeker_id, job_id, resume, coverletter, status) 
VALUES (1, 1, 'Resume for jobseeker 1', 'Cover letter for jobseeker 1', 'pending');
INSERT INTO Application (jobseeker_id, job_id, resume, coverletter, status) 
VALUES (2, 1, 'Resume for jobseeker 2', 'Cover letter for jobseeker 2', 'reviewed');
INSERT INTO Application (jobseeker_id, job_id, resume, coverletter, status) 
VALUES (3, 2, 'Resume for jobseeker 3', 'Cover letter for jobseeker 3', 'accepted');

