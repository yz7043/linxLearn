# Add privilege
chmod +x xxx.sh

# commnet
1. use hash tag
2. use :<<xxx ..... xxx for block comment.
	- notice that xxx is a name indicating the comment.

# variable
1. define a var:
	1. name1="xxx"
	2. name1='xxx'
	3. name2=xxx
2. use a var:
	1. ${name1}
	2. $name1
3. type xxx
	1. check the name of the command xxx
4. readonly, declare -r 
	1. make var readonly
5. unset name
	delete var 
6. export name, declare -x name (make a self-defined var to enviroment var)
	make a name available in child processes
7. declare +x name (make a enviroment var to self-defined var)

# String
You can use single quote, double quote
1. single quote won't read variable
2. double quote can do that
Get string len
	${#name}
Substring
	${name:0:5} (from 0, 5 characters)

# Built-in variable
1. $0 is first segement of your command (if you run "./test.sh", "./test.sh" is your $0)
2. ${num} is your argument.
3. $# is the number of your argument
4. $* == "$1 $2 $3 ..." 
5. $@ == "$1" "$2" ...
6. $$ is current process id
7. $? is the exit status of last command
8. $(command) is the stdout  of that command
9. `command` is the stdout of that command


# Array
## Define an array
1. array=(1 2 "def" "gg")
2. array[0]=1
## Read the whole array
1. ${array[@]}
2. ${array[*]}

# expr command
1. `expr length "$str"`
2. the output of expr is stdout
3. It can handle integer calculation. Priority logic < int calculation < string
4. Have to use \ for escape characters 
5. Logical | & <= < > >=
	- if you use |, it will stdout the first var that is not 0.
	- if you use &, if it's false, return 0; if it's true, it will return the first var.

# echo
1. esacape character:
	- use "" for string
	- use -e argument
2. "\c" don't change line bewtween two echo commands
3. use single quotes to avoid translate variables and escape characters.
