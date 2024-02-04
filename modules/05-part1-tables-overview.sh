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
  OVERVIEW
=============
Ok...now we are dealing with tables. This will be much more involved than any of the previous modules, but once you understand this lesson, you will have a solid foundation for working with SQL.

In the previous modules, we identified which DATABASES we wanted to create and interact with. With the completion of Module 3, the -herbal_cove- and -fun_db- DATABASES were created and should be ready to go for this lesson.

Module 4 explained the relationship of all of the components of a DATABASE, so now we need to define exactly what data we want to capture. Fortunately, for -herbal_cove-, we already identified the DATA that we wanted to capture for at least one of the TABLES.

To create a Mental Model for what we want to build, let's map out all of the specifics for the DATA we want to collect for the -herbal_cove- DATABASE.  We decided that we wanted DATASETS (collections of data) for:

- customers
- employees
- products
- vendors

===============
 WHY DATABASE?
===============

Let's take a step back and answer the question, Why? Well, if you run a business, record keeping is an integral part of managing the organization. Ok, but can't I use Spreadsheets? Sure, you could use a regular Document, if you wanted. BUT, what DATABASES provide is a why to programmatically create, insert, update and delete DATA and, more specifically to its purpose, the ability to create RELATIONSHIPS between DATASETS.

What does that mean? Good question and thank you for asking :) I shall now adopt the name sqlGPT...

Ok, say for instance, with the DATASETS that we identified, you want to link DATA between the -products- and -vendors- TABLES. This means that the two TABLES have different COLUMNS of DATA, but there might be things in those separate TABLES that RELATE to each other.

In your -products- TABLE, you might have product information for purchaseable items that -your company- provides and in the -vendors- TABLE, you have information on companies that you do business with and products that -the vendor- provides to you for you to create your products.

BOOM, that's a RELATIONSHIP. In your -products- TABLE, you might want to track from which -vendor- you purchase supplies from to create that product. You see the magic? Maybe not yet, in all its glory, because that is the literal tip of the iceberg. 

This is the quintessential benefit of RELATIONAL DATABASES, and SQL is the programming language for RELATIONAL DATABASES.

Ok, that was the step back, so let's step forward again. In this module, we won't be creating RELATIONSHIPS between TABLES, but it's super important to understand that it is a critical part of DATABASE ADMINISTRATION.
" .05
