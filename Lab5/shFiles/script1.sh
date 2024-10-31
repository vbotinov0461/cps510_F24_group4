#!/bin/sh
#export
LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

# Load configuration from config.sh
. ./config.sh  # Source the variables from config.sh

# Running SQLPlus with connection string
sqlplus64 "${USER}/${PASSWORD}@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=${HOST})(Port=${PORT}))(CONNECT_DATA=(SID=${SID})))" <<EOF


SELECT js.job_seeker_id, jobseeker_name
FROM jobseeker js, application a
WHERE a.job_seeker_id = js.job_seeker_id
AND EXISTS
    (SELECT *
    FROM job jo
    WHERE jo.employer_name = 'Graham Construction'
    AND jo.job_id = a.job_id)
ORDER BY js.job_seeker_id ASC;
