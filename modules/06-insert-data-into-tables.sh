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
Now that we have a TABLE in one of our DATABASES, we can add DATA to it by INSERTING ROWS. The INSERT STATEMENT will contain all the values in a ROW which correspond to the TABLE'S COLUMNS and adhere to their parameters (DATATYPES and CONSTRAINTS). Let's start off with an example and explain it from there. Here is the code syntax for the SQL STATEMENT to INSERT a ROW into the -employees- TABLE in the -herbal_cove- DATABASE:

INSERT INTO employees (
  id,
  name,
  hire_date,
  phone_number,
  email_address,
  job_title
)
VALUES (
  '1',
  'Arya Stark',
  '1000-01-10',
  '(888) 555-5555',
  'arya.stark@winterfell.com',
  'Director of Security'
);

Here's a SQL SELECT STATEMENT to query the contents of the -employee- TABLE, since we just added our first ROW:

SELECT * FROM employees;

In a literal sense, that STATEMENT means SELECT EVERYTHING FROM the -employees- TABLE.
Sometimes, you won't need to pull everything, so let's modify that STATEMENT to only look for -name- and -job_title-:

SELECT name, job_title FROM employees;

This would output only the data from the specified COLUMNS.

Let's add a second employee, but this time, we'll omit the COLUMN that isn't REQUIRED (email_address):

INSERT INTO employees (
  id,
  name,
  hire_date,
  phone_number,
  job_title
)
VALUES (
  '2',
  'Jon Snow',
  '1001-06-24',
  '(888) 555-2222',
  'VP of Training'
);


In this module, you learned how to:
- INSERT ROWS into a TABLE
- QUERY TABLES in a DATABASE
" .03
