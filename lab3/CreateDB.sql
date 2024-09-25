-- Create an ENUM type for application status
CREATE TYPE applicationStatus AS ENUM (
    'pending',
    'reviewed',
    'accepted',
    'rejected'
);

-- Create the Application table
CREATE TABLE Application (
    jobseeker_id INT,
    job_id INT,
    resume TEXT NOT NULL,
    coverletter TEXT,
    status applicationStatus,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (jobseeker_id, job_id),
    FOREIGN KEY (jobseeker_id) REFERENCES JobSeeker(jobseeker_id),
    FOREIGN KEY (job_id) REFERENCES Job(job_id)
);

-- Create a table to store unique skills
CREATE TABLE Skills (
    skill_name VARCHAR(255) PRIMARY KEY
);


-- Create a JobSeekerSkills table
CREATE TABLE JobSeekerSkills (
    skill_name VARCHAR(255),
    job_seeker_id INT,
    PRIMARY KEY (skill_name, job_seeker_id),
    FOREIGN KEY (skill_name) REFERENCES Skills(skill_name),
    FOREIGN KEY (job_seeker_id) REFERENCES JobSeeker(job_seeker_id)
);

-- Create the JobSkills table
CREATE TABLE JobSkills (
    skill_name VARCHAR(255),
    job_id INT,
    PRIMARY KEY (skill_name, job_id),
    FOREIGN KEY (skill_name) REFERENCES Skills(skill_name),
    FOREIGN KEY (job_id) REFERENCES Job(job_id)
);
