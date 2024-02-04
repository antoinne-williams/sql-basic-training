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
=============
 CONSTRAINTS
=============

The last component that we might set as a COLUMN parameter is a CONSTRAINT. This helps us enforce other requirements that we might have on a DATASET. For instance, we may need a field to be REQUIRED. By default, COLUMNS are defined to be OPTIONAL, which means, if you enter DATA into a TABLE, you can elect to omit DATA for the COLUMN. We may also need to ensure that a value is completely UNIQUE, which means, no other ROW in the TABLE can have the same VALUE in the same COLUMN. Like a social security number, but let's use phone number in our case, since we already defined that one as a prerequisite for our -employees- TABLE.

Here are a list of CONSTRAINTS and their purpose:

NOT NULL     - in SQL land, NULL means empty (i.e. -can be OPTIONAL-). 
               This is the default for all columns.
               Therefore NOT NULL means this field IS REQUIRED when you are entering a ROW of DATA.

UNIQUE       - all values in a particular column MUST BE different

PRIMARY KEY  - a combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table.
               This is usually an ID COLUMN.

FOREIGN KEY  - prevents actions that would destroy links between tables.
               Really important component, but not necessary for this training. Not yet.

CHECK        - ensures that the values in a column satisfies a specific condition

DEFAULT      - sets a default value for a column if no value is specified

CREATE INDEX - used to create and retrieve data from the database very quickly

Important note: CONSTRAINTS ARE OPTIONAL. Some COLUMNS will have them set, some won't, but ALL COLUMNS will have a NAME and a DATATYPE.
" .05
