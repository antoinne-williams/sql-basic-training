#!/bin/bash

# Functions
function typewriter
{
    text="$1"
    delay="$2"

    for ((i = 0; i < ${#text}; i++)); do
        echo -n "${text:$i:1}"
        sleep ${delay}
    done
    echo
    echo
}

typewriter "
We now know how to:
- VIEW and SELECT DATABASES
- CREATE DATABASES
- CREATE TABLES
- INSERT ROWS INTO TABLES
- QUERY TABLES with SELECT STATEMENTS

What if there is erroneous DATA in one of the fields, or a change in status occurs and we need to UPDATE the VALUE(S) in a ROW?

Great question! Here's how we do it. Let's use the scenario where Arya is promoted from Directory of Security to Chief Security Advisor (she definitely deserves it after all she's done handling Long Nights on the job...get it?...okay, nevermind, also I made that title up).

To make this change to Arya's existing row, we specify the TABLE (as always), the COLUMN(S) we want to update and their VALUES, and we set the WHERE clause to limit the change to the exact ROW that we are targeting. The WHERE clause can be anything that uniquely identifies the ROW that we want, so it could be -id-, but we may not always know an -employees- -id- without taking an additional action to find it. But we do know that there is only one Arya Stark, so we'll use that.

Here is the SQL UPDATE STATEMENT so that the DATABASE reflects Arya's promotion:

UPDATE employees
SET job_title = 'Chief Security Advisor'
WHERE name = 'Arya Stark';

You can update multiple COLUMNS at a time, as well. The COLUMN = VALUE combinations would just need to be separated by commas.

UPDATE employees
SET job_title = 'Chief Security Officer', phone_number = '(888) 555-1234'
WHERE name = 'Arya Stark';

Now Arya is a Chief Security Officer and has a new phone number.

-more to come-
" .03
