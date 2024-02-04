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
To log into the MySQL Server instance that you installed and configured, run the following command:

mysql -u root -p

The first part of the command -mysql- is running the MySQL program.

The -u flag signifies the user name that we will use to login with. In this case, root.

The -p flag tells the -mysql- program that you would like to prompted for the password. Enter the password you set during the MySQL installation.

Once you run the command above and login, you will switch from your original shell to a mysql shell, which will indicate a successful login.

You will also be able to run MySQL commands now. This is the shell that we will need for the MySQL training.

To exit MySQL after logging in. Type 'exit' and hit enter.
" .03
