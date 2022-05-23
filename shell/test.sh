#! /bin/bash

# This is a comment.

:<<EOF
This
is
a
block
comment.
EOF

:<<abc
Still comment.
abc

# variable
name1='yuxiang'
echo ${name1} # recommended
echo $name1

readonly r1 = rrr


echo 'This is single quote string ${r1}'

echo "This is double quote string ${name1}"
