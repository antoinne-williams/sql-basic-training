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
In the last module, you learned how to CREATE and DROP (delete) databases. Now we need to go over the anatomy of a database in order to understand exactly what's in a database and their significance.

At the highest level, you have the Database Server. This is the software that is installed which will house the databases that you create. For this training module, we installed the MySQL Database Server. Once you have a server, you can create users, set user permissions, etc. 

(Other popular SQL-based database servers include Oracle, Microsoft SQL Server, and PostgreSQL)

Once you have a Database Server, you can create DATABASES. Think of the DATABASE as the name of whatever it is that you want to capture data for. If you are starting a company and you want to capture data on employees, customers, products, vendors, etc, you may create a DATABASE with your company name.

In the last module, we created a DATABASE named -herbal_cove-. That's the company name, in this case.

Ok, so what about all the data we just mentioned? All data in a DATABASE exists within TABLES. 

This means our -herbal_cove- DATABASE will include the following TABLES:

- employees
- customers
- products
- vendors

When creating TABLES, we need to define the COLUMNS, which represent the vertical arrangement of data within a TABLE. Each COLUMN has a specific -datatype- and represents a particular attribute or characteristic of the data being stored. COLUMNS are used to organize and store different types of information in a structured manner.

When the COLUMNS are created, the actual data values which correspond to the associated COLUMN are stored in ROWS. Say, for example, you need to query a DATABASE for a customer's email address. The value that you are looking for would exist in a ROW in the DATABASE'S TABLE.

Now we that we know the main components of a DATABASE, let's review and tie them all together with examples.

---ANATOMY OF A DATABASE---

DATABASE SERVER - the software within which DATABASES will be created/administered (i.e. MySQL)

DATABASE - the component that represents the entire collection of data (i.e. Database Name -herbal_cove-, representing all of the data that the Herbal Cove company wants to eventually store, organize, and manage)

TABLE - the component where data is actually stored within a DATABASE. When a DATABASE is created, it is empty. TABLES represent the specific dataset that you want to manage. When creating DATABASES, many TABLES are usually created. Going back to the company analogy, as seen above, we would create 4 TABLES for the -herbal_cove- DATABASE, because the actual data that we would want to capture for each dataset is different. For instance, in the -employees- TABLE, there would be many fields that do not coincide with data that we would capture in the -products- TABLE. This means that they should be separate. The TABLE is that separation. Both -employees- and -products- would exist within the -herbal_cove- DATABASE, but because they have unique properties, they would be created as separate TABLES. This will be covered more in the next module.

COLUMN - this component represents the unique properties mentioned above in the TABLES section. Basically, a COLUMN is a field in the TABLE that represents an attribute that we want to capture data for. Example: in the -herbal_cove- DATABASE, we have an -employees- TABLE, and we want to capture the employee's name, hire date, phone number, email address, and job title...All of those would be COLUMNS in the TABLE. The specific data we want to capture in a TABLE is the COLUMN.

ROW - a ROW is the actual value that would be input into a TABLE'S defined COLUMNS. So, let's say we have an employee named John Doe...nah, let's go with Arya Stark. This means we have a ROW of data where each COLUMN is filled out with the values for that employee. In the case of Arya, her ROW would include her name (to match the -name- COLUMN): Arya Stark, her hire date (to match the -hire_date- COLUMN): 01/01/1000; her phone number (to match the -phone_number- COLUMN): 555-5555; her email address (to match the -email_address- COLUMN): arya.stark@winterfell.com; and her job title (to match the -job_title- COLUMN): Faceless Water Dancer.

What does this look like? Here is a visualization of the relationship of the components defined above:

DATABASE: herbal_cove
TABLE: employees

      +---------------+--------------------+-----------------------+------------------------------------+-----------------------+
      | name (COLUMN) | hire_date (COLUMN) | phone_number (COLUMN) | email_address (COLUMN)             | job_title (COLUMN)    |
      +---------------+--------------------+-----------------------+------------------------------------+-----------------------+
ROW ->| Arya Stark    | 01/01/1000         | 555-5555              | arya.stark@winterfell.com          | Faceless Water Dancer |
ROW ->| Jon Snow      | 04/21/1003         | 555-2222              | jon.snow@kingofthewildlings.com    | Rightful King         |
      +---------------+--------------------+-----------------------+------------------------------------+-----------------------+

This was a long one...thanks for hanging in there. I'll keep the recap short.

In this module, there were no action items or any commands to run on MySQL. Instead, you learned:
- The major components of a DATABASE and how they relate to each other
  - DATABASE SERVER > DATABASE > TABLE > COLUMN > ROW
" .03
