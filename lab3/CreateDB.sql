-- Create the Application table
CREATE TABLE Application (
    jobseeker_id INT,
    job_id INT,
    resume CLOB NOT NULL,  
    coverletter CLOB,     
    status VARCHAR2(20),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT status_check CHECK (status IN ('pending', 'reviewed', 'accepted', 'rejected')),
    PRIMARY KEY (jobseeker_id, job_id),
    FOREIGN KEY (jobseeker_id) REFERENCES JobSeeker(jobseeker_id),
    FOREIGN KEY (job_id) REFERENCES Job(job_id)
);

-- Create a table to store unique skills
CREATE TABLE Skills (
    skill_name VARCHAR2(255) PRIMARY KEY
);


-- Create a JobSeekerSkills table
CREATE TABLE JobSeekerSkills (
    skill_name VARCHAR2(255),  
    job_seeker_id INT,
    PRIMARY KEY (skill_name, job_seeker_id),
    FOREIGN KEY (skill_name) REFERENCES Skills(skill_name),
    FOREIGN KEY (job_seeker_id) REFERENCES JobSeeker(job_seeker_id)
);


-- Create the JobSkills table
CREATE TABLE JobSkills (
    skill_name VARCHAR2(255),  
    job_id INT,
    PRIMARY KEY (skill_name, job_id),
    FOREIGN KEY (skill_name) REFERENCES Skills(skill_name),
    FOREIGN KEY (job_id) REFERENCES Job(job_id)
);
