#!/bin/sh
#export
LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

# Load configuration from config.sh
. ./config.sh  # Source the variables from config.sh

# Running SQLPlus with connection string
sqlplus64 "${USER}/${PASSWORD}@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=${HOST})(Port=${PORT}))(CONNECT_DATA=(SID=${SID})))" <<EOF


SELECT job_id, job_title, location_name, salary, employer_name
FROM job
WHERE employer_name = 'FreshBooks'
UNION
SELECT job_id, job_title, location_name, salary, employer_name
FROM JOB
WHERE employer_name = 'Sobeys Inc.';
