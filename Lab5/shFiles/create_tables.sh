#!/bin/sh
#export
LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

# Load configuration from config.sh
. ./config.sh  # Source the variables from config.sh

# Running SQLPlus with connection string
sqlplus64 "${USER}/${PASSWORD}@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=${HOST})(Port=${PORT}))(CONNECT_DATA=(SID=${SID})))" <<EOF

CREATE TABLE Skills (
    skill_name VARCHAR2(255) PRIMARY KEY
);


CREATE TABLE employer (
    employer_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(50),
    password VARCHAR2(28),
    industry_Name VARCHAR2(50),
    Created_Date DATE DEFAULT CURRENT_DATE,
    PRIMARY KEY (Employer_Name)
);

CREATE TABLE job(
    job_title VARCHAR2(50),
    job_id  INT NOT NULL,
    location_name VARCHAR2(50),
    salary INT,
    job_description VARCHAR2(500),
    Date_Posted DATE DEFAULT CURRENT_DATE,
    Employer_Name VARCHAR2(50),
    PRIMARY KEY (Job_Id),
    FOREIGN KEY (Employer_Name) REFERENCES employer(Employer_Name)
);

CREATE TABLE JobSkills (
    skill_name VARCHAR2(255),
    job_id INT,
    PRIMARY KEY (skill_name, job_id),
    FOREIGN KEY (skill_name) REFERENCES Skills(skill_name),
    FOREIGN KEY (job_id) REFERENCES Job(job_id)
);


CREATE TABLE education (
    Education_Id INT NOT NULL,
    Education_Type VARCHAR2(50),
    Education_Lvl VARCHAR2(50),
    School_Name VARCHAR2(50),
    PRIMARY KEY (Education_Id)
);

CREATE TABLE jobseeker (
    job_seeker_id INT NOT NULL,
    Jobseeker_Name VARCHAR(50),
    email VARCHAR2(50),
    password VARCHAR2(28),
    education_id INT,
    created_date DATE DEFAULT CURRENT_DATE,
    PRIMARY KEY (Job_seeker_Id),
    FOREIGN KEY (Education_Id) REFERENCES education(Education_Id)
);

CREATE TABLE Application (
    application_id INT,
    job_seeker_id INT,
    job_id INT,
    resume CLOB NOT NULL,
    coverletter CLOB,
    status VARCHAR2(20),
    created_date DATE DEFAULT CURRENT_DATE,
    CONSTRAINT status_check CHECK (status IN ('pending', 'reviewed', 'accepted', 'rejected')),
    PRIMARY KEY (application_id),
    FOREIGN KEY (job_seeker_id) REFERENCES JobSeeker(job_seeker_id),
    FOREIGN KEY (job_id) REFERENCES Job(job_id)
);

CREATE TABLE JobSeekerSkills (
    skill_name VARCHAR2(255),
    job_seeker_id INT,
    PRIMARY KEY (skill_name, job_seeker_id),
    FOREIGN KEY (skill_name) REFERENCES Skills(skill_name),
    FOREIGN KEY (job_seeker_id) REFERENCES JobSeeker(job_seeker_id)
);
