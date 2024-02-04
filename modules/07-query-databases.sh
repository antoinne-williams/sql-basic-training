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
In the last lesson, we INSERTED ROWS into the -employees- TABLE in the -herbal_cove- DATABASE. We also used basic SQL SELECT STATEMENTS to QUERY the data.

We'll expand on QUERYING DATA in this module by looking at CONDITIONALS. A CONDITIONAL is another part of a QUERY which further filters out the DATA that we are looking for.

For instance, we now have two ROWS in -employees-. What if I want to only pull DATA from one of the employees or I wanted to pull all data that matched a certain criteria?

We'll cover using the WHERE clause. One of the SQL SELECT STATEMENTS we used before was:

SELECT * FROM employees;

This would list every employee in the TABLE and provide the VALUES in their ROW for all of the COLUMNS. But what if I only want to pull Arya's information.

SELECT * FROM employees
WHERE name = "Arya Stark";

What if you don't know Arya's last name? We can PATTERN MATCH with what we do know using % sign.

SELECT * FROM employees
WHERE name LIKE "Arya%";

Wait, we use an equal sign for the first QUERY and a regular word for the second one. How does that work?

To refine a QUERY by filtering the DATASETS, we use SQL OPERATORS. There are ARITHMETIC OPERATORS, BITWISE OPERATORS, etc, but we'll focus on the most commonOPERATORS: COMPARISON and LOGICAL

When we want to find an EXACT match, we use the COMPARISON OPERATOR (=). If we want to MATCH a PATTERN that is not EXACT, we can use a LOGICAL OPERATOR (LIKE). There are many more and I'll add them to the end of the lesson, but for now, let's use this new information to parse out the DATA we need, based on pre-defined scenarios.

SCENARIOS
> Need to pull the name and phone number of an -employee- whose job title is "VP of Training"

SELECT name, phone_number FROM employees
WHERE job_title = "VP of Training";

> Need to pull all information on employees not named Arya, but I don't remember her last name

SELECT * FROM employees
WHERE name NOT LIKE "Arya%";

> Need to pull the email addresses of employees hired BEFORE 1000-08-30

Select email_address FROM employees
WHERE hire_date < '1000-08-30';

-more to be added soon-
" .03
