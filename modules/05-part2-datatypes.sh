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
===========
 DATATYPES
===========

The next thing we need to know is, when defining what DATA will be captured in TABLE'S COLUMNS, we have to identify the DATATYPE for the COLUMN. This basically means, the...well, TYPE of DATA. 

When creating a TABLE, the code syntax to create the TABLE and define the COLUMNS is as follows:

CREATE TABLE table_name (
  column1 datatype,
  column2 datatype,
  column3 datatype
);

(always remember close your SQL STATEMENTS with the semi-colon)

There are dozens of DATATYPES and many aren't frequently used, but here are some common SQL DATATYPES:

(MySQL has three main DATATYPES: string (alphanumeric), numeric (numbers only), and date/time)

STRING DATATYPES:

CHAR(size): a FIXED length string, meaning, you expect the data in a COLUMN defined with this DATATYPE toALWAYS BE THE EXACT SAME LENGTH. Let's use the -phone_number- COLUMN as an example. Max length is 255.

> Example Scenario: Herbal Cove is a national company, so our employees will only ever have 10 digit phone numbers, but we want to capture the dashes and parentheses in the phone number as well so that if we pull the DATA from the DATABASE, it is presented exactly how we want. If we wanted only digits in the phone number like 8885551234, we might consider using a NUMBER-based DATATYPE (which we'll cover later), but because we want to capture the data like this (888) 555-1234, it includes ALPHANUMERIC characters, BUT IT WILL ALWAYS BE 14 CHARACTERS (10 numbers, 2 parentheses, 1 dash, 1 space). This will NEVER VARY (remember this statement).
> Example Configuration: Based on our scenario, we would create the -phone_number- COLUMN with a CHAR(14) DATATYPE
>> Looks like this...

   CREATE TABLE employees (
     phone_number CHAR(14)
   );

   That's it. Well, for this example. The actual TABLE will have MANY COLUMNS,
   but that's how you would define the -phone_number- COLUMN, based on our scenario above

VARCHAR(size): a VARIABLE length string, meaning, a string could be UP TO a certain amount of alphanumeric characters, but entered data is expected to VARY. Likely the most used DATATYPE in all of RELATIONAL DATABASERY (...that's not a word...). Max length is 65,535.
> Example Scenario: Names (short and sweet), say we want to allow up to 50 characters.
> Example Configuration: -name- COLUMN with a VARCHAR(50) DATATYPE
>> Looks like this...(and we'll combine the configuration for -phone_number- that we set above in this example)

   CREATE TABLE employees (
     name         VARCHAR(50),
     phone_number CHAR(14)
   );

  This example is creating an -employee- TABLE with two COLUMNS:
  -name- with a CHAR(14) DATATYPE, and
  -phone_number with a VARCHAR(50) DATATYPE

BUT WAIT sqlGPT, why wouldn't we just use VARCHAR for all alphanumeric inputs? Well, you could. However, some DATATYPES provide better performance when querying a DATABASE. Let's just say for training purposes, you can absolutely use VARCHAR for alphanumeric inputs, but as you progress to more advanced SQL administration, optimizing DATATYPES will come into play.

Ok, let's move on to numeric DATATYPES.

NUMERIC DATATYPES:

INT or INTEGER(size): a VARIABLE length integer, up to 2,147,483,648 numbers. 

> NOTE: There are smaller DATATYPES like:
        TINYINT with a max length of 127
        SMALLINT with a max length of 32,767
        MEDIUMINT with a max length of 8,388,607

        There is also a larger DATATYPES like:
        BIGINT with a max length of 9,223,372,036,854,775,807

        For the purposes of training, we can stick to INT,
        but I don't expect we would need anything beyond TINYINT.

        The same reasons to why you might want to consider between CHAR and VARCHAR apply here.
        Smaller, more defined DATATYPES provide better performance.

BOOL or BOOLEAN: a FIXED length integer, which accept 0 as the integer for FALSE and any other number as TRUE.

> NOTE: Excellent option for optimizing a DATASET.
        For instance, instead of a VARCHAR COLUMN which accepts -true- or -false- strings,
        you can set a COLUMN to a BOOL DATATYPE and use 0 and 1 for false and true, respectively.
        See the vision?

Last one. Date and Time DATATYPES. Very useful for capturing data like -hire date-, -purchase date-, etc.

DATE/TIME DATATYPES:

DATE: Format = YYYY-MM-DD. The supported range is from '1000-01-01' to '9999-12-31'

TIME: Format = hh:mm:ss

DATETIME: Combination of DATE and TIME. Format = YYYY-MM-DD hh:mm:ss. The supported range is from '1000-01-01 00:00:00' to '9999-12-31 23:59:59'

TIMESTAMP: a current timestamp with the same format as DATETIME

YEAR: four-digit format

What's the difference between DATETIME and TIMESTAMP? For DATETIME, you may setup a -sale date- in your DATABASE where you know exactly when to set the time and date. Like, 12 AM on Valentine's Day. For a TIMESTAMP, you may want to capture the exact moment an action occurs, like -customer- bought -product- at this EXACT time.

That's a breakdown of the common DATATYPES you might use when defining COLUMNS in TABLE.
" .05
