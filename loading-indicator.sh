# loading screen in bash
# usage: 'bash ./loading-indicator.sh'
# application: can be used as a placeholder for waiting processes

# NOTE: no.of iterations can be replaced by a boolean statement

# author: github.com/theanuragshukla


# no. of iterations
iteration=3

# sleep duration between each step
sleep=0.2

# color configurations
Red='\033[0;31m'
Green='\033[0;32m'
Yellow='\033[0;33m'

count=0
sleep 0.5
echo -e "\n\n${Yellow}Trying to connect! please wait...\n"
sleep 0.5
echo -en "${Red}connecting"
while [ $count -lt $iteration ]
do
	for i in {1..3}
	do
		sleep "$sleep"
		echo -en "."
	done
	sleep "$sleep"
	for i in {1..3}
	do
		sleep "$sleep"
		echo -en "\b \b"
	done
	((count++))
done
sleep 0.5
echo -en "\r${Green}connected successfully"
