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
Now that you know how to...

- View available databases
- Select databases to interact with
- Query data from tables in a database

...it is now time to create your own databases!

Let's create two databases. One that may be common for an enterprise environment and one for fun.

The command to create a database is...pretty straightforward...

CREATE DATABASE <database-name>;

...told you it was straightforward :)

The first database we will create will contain fake customer information. This is the type of info you might interact with at the enterprise level.

The second database will contain popular cartoon characters, the media from which they originate, and descriptions. This is something that might be fun to setup for your children, or nieces and nephews.

Let's give the first database a name that might represent a company that would contain customer data.
Let's give the second database a name that would expect to include a table which catalogs the cartoon character info.

Run the following commands from the mysql> prompt to create the databases:

CREATE DATABASE herbal_cove;
CREATE DATABASE fun_db;

After running the above commands, you will have two new databases, which you can view with commands you learned from the previous module:

SHOW DATABASES;

Say, for instance that you incorrectly named one of the databases or you wanted to pick a different name.

This is where the DROP command comes into play. You can use it for DATABASES and TABLES, but since we're only working with DATABASES now, let's delete one.

To delete a created database, run the following command:

DROP DATABASE fun_db;

Now, the fun_db database that you created before is gone. Totally deleted from the database server.

View the databases again to see the change:

SHOW DATABASES;

We do, however, want that database so that we can create a table for it and insert data, so let's bring it back:

CREATE DATABASE fun_db;

When you want to interact with one of them, remember to select the database with the USE command:

USE herbal_cove;
or
USE fun_db;

You can verify the selection of the database with:

SELECT DATABASE();

In this module, you learned how to:
- Create databases
- Delete (drop) databases

We reiterated how to:
- View databases
- Select databases
- Confirm which database is selected
" .03
