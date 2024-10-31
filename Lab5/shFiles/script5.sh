#!/bin/sh
#export
LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

# Load configuration from config.sh
. ./config.sh  # Source the variables from config.sh

# Running SQLPlus with connection string
sqlplus64 "${USER}/${PASSWORD}@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=${HOST})(Port=${PORT}))(CONNECT_DATA=(SID=${SID})))" <<EOF


SELECT COUNT(education_lvl), school_name
FROM education
WHERE education_lvl = 'Bachelors'
GROUP BY school_name;
