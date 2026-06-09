#!/bin/bash
while IFS=',' read user status
do

    if [ "$status" = "left" ]
    then

        grep -q "$user" github_user.txt

        if [ $? -eq 0 ]
        then
            echo "$user ,Violation" >> reports/report.csv
        fi

    fi
done < config/employees.csv
