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
Ok...now we are dealing with tables. This will be much more involved than any of the previous modules, but once you understand this lesson, you will have a solid foundation for working with SQL.
" .03
