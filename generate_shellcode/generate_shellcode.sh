#!/bin/sh

# '\x41' = 'A'
# '\x90' = no-op

# $1 = int times
# $2 = str characterto add to string

print_chars() {
    str=""
    for i in `seq $1`; do
        str=$str$2
    done

    printf "$str"
    #./Buffo.out $str
}

if [ $# -lt "1" ]; then return; fi

if [ $1 -gt "1" ]; then
    print_chars $1 '\x41'
else
    echo "no"
fi
