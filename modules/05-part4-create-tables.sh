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
==================================
  DEFINING COLUMNS WITHIN TABLES
==================================

Back to the Mental Model. Since there has been a lot of exposition in this module and the previous, the rest of the way will be as straightforward as possible, since the foundation has been laid.

-----DEFINING THE DATASETS FOR THE herbal_cove DATABASE-----

(I'll start with employees, because we already defined that)

> TABLE: employees
  > COLUMN: name, up to 50 alphanumeric characters, REQUIRED FIELD
  > COLUMN: hire_date, perfect opportunity to use DATE, REQUIRED FIELD
  > COLUMN: phone_number, exactly 14 alphanumeric characters, should be UNIQUE
  > COLUMN: email_address, up to 100 alphanumeric characters
  > COLUMN: job_title, up to 50 alphanumeric characters, REQUIRED FIELD
  
Ok, so not only have we defined what we want in the TABLE, we defined the parameters of the COLUMNS as well. Now we can create it!

But wait...in the words of Uncle Chan from Jackie Chan Adventures...one mooooore thing. It is critical that we have a UNIQUE IDENTIFIER for each ROW in a database. This will help us quickly associate RECORDS with a parameter that we can predict. So, let's add a required ID COLUMN as well. In the corporate world, an employee's ID number is used like this all the time. We'll keep it simple and start with 0001. 

We have determined that we also want:
  > COLUMN: id, which is REQUIRED and UNIQUE. 
            It will always be a NUMBER and let's set a max of 4 characters.
            In MySQL, we will need to set the COLUMN as NOT NULL, 
            then set the PRIMARY KEY CONSTRAINT on that COLUMN as a separate entry.

=================================
  CREATE TABLES IN THE DATABASE
=================================

NOW, we can create the TABLE, since we have well defined parameters for the DATASET.

Remember to: 
- Log into MySQL
- Select (i.e. USE) the -herbal_cove- DATABASE

If you run...

SHOW TABLES;

...right now, you will see that the DATABASE is empty, i.e. there are no TABLES. 
That's about to change :)

Here is the code syntax to create the -employees- TABLE in the -herbal_cove- DATABASE:

CREATE TABLE employees (
  id INT(4) NOT NULL,
  name VARCHAR(50) NOT NULL,
  hire_date DATE NOT NULL,
  phone_number CHAR(14) UNIQUE,
  email_address VARCHAR(100),
  job_title VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

Run the above SQL STATEMENT in the mysql> prompt (with the -herbal_cove- DATABASE selected) and you will have created your first DATABASE TABLE!

To view the created TABLE, use the command from before:

SHOW TABLES;
" .05
