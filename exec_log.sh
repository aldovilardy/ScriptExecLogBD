echo "Execution script and error log for *.sql scripts"
echo "Autor: Aldo Vilardy 30/02/2015"
echo "The error log will be regitered into the file info.txt"
FILE=./info.txt
if [ -f "$FILE" ]; then
	rm -f $FILE
fi
for script in *.sql; 
do
	sqlcmd -S localhost -d Briefing2 -E -i "$script" -b -o msg.txt
	if $? = 1; then
		echo >> info.txt
		$dateTime = 'date +"%Y-%m-%d %T"'
		echo "$dateTime Script Error $script" >> info.txt
		arr1=""
		mapfile -t arr1 <msg.txt
		for i in ${!arr1[@]}; do
			echo "{arr[i]}" >> $FILE
		done
	fi
done
if [ ! -f "$FILE" ]; then
	echo No errors were reported in the execution of the scripts
	echo No errors were reported in the execution of the scripts >> info.txt
fi
read -p "Press enter to continue..."

echo "Execution script and error log for *.sql scripts"
echo "Autor: Aldo Vilardy 30/02/2015"
echo "The error log will be regitered into the file info.txt"
FILE=./info.txt
if [ -f "$FILE" ]; then
	rm -f $FILE
fi
for script in *.sql; 
do
	sqlcmd -S localhost -d Briefing2 -E -i "$script" -b -o msg.txt
	if $? = 1; then
		echo >> info.txt
		$dateTime = 'date +"%Y-%m-%d %T"'
		echo "$dateTime Script Error $script" >> info.txt
		arr1=""
		mapfile -t arr1 <msg.txt
		for i in ${!arr1[@]}; do
			echo "{arr[i]}" >> $FILE
		done
	fi
done
if [ ! -f "$FILE" ]; then
	echo No errors were reported in the execution of the scripts
	echo No errors were reported in the execution of the scripts >> info.txt
fi
read -p "Press enter to continue..."

echo "Execution script and error log for *.sql scripts"
echo "Autor: Aldo Vilardy 30/02/2015"
echo "The error log will be regitered into the file info.txt"
FILE=./info.txt
if [ -f "$FILE" ]; then
	rm -f $FILE
fi
for script in *.sql; 
do
	sqlcmd -S localhost -d Briefing2 -E -i "$script" -b -o msg.txt
	if $? = 1; then
		echo >> info.txt
		$dateTime = 'date +"%Y-%m-%d %T"'
		echo "$dateTime Script Error $script" >> info.txt
		arr1=""
		mapfile -t arr1 <msg.txt
		for i in ${!arr1[@]}; do
			echo "{arr[i]}" >> $FILE
		done
	fi
done
if [ ! -f "$FILE" ]; then
	echo No errors were reported in the execution of the scripts
	echo No errors were reported in the execution of the scripts >> info.txt
fi
read -p "Press enter to continue..."

