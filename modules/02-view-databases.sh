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
After logging into MySQL, you can view and interact with all of the default databases to get a feel for navigating.

To see all available databases, run the following command (from the mysql> prompt):

SHOW DATABASES;

This command shows all databases that have been created within your MySQL instance.

By default, none of the databases are --selected-- to interact with. 
If you run the following command and see NULL, this indicates that no database is selected.

SELECT DATABASE();

To select a database, use the USE command to perform the selection.
In this example, we will be selecting a default database --mysql--:

USE mysql;

If you re-run SELECT DATABASE(); you will now see --mysql--, indicating that you can interact with that database now. 

Once you have selected a database, the data that you will want to interact with will exist within TABLES.
To see which tables exist, run the following command:

SHOW TABLES;

This will populate a list tables from which you can query (SELECT) data.
We'll use a small table so that it is easy to read from the terminal:

SELECT * FROM server_cost;

In this module, you have learned how to:
  - SHOW which DATABASES are available
  - SELECT a DATABASE to interact with
  - SHOW TABLES which exist from within a SELECTED DATABASE
  - Queried data from a SELECTED DATABASE'S TABLE
" .005
