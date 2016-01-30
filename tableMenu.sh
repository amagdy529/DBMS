#!/usr/bin/ksh

currLoc="/home/ahmed/Desktop/ShellScripting/DBMS"


creatTB(){
echo "enter a table name "
read TBname 
while [ -f $TBname ]
do
echo "table already exists "
sleep 1.3
echo "enter another name "
read TBname
done #end first while

touch $TBname
touch $TBname.meta

echo "enter no. of cols"
read cols
colCounter = 0
while [ $colCounter < $cols ]
do
	echo "enter column name :"
	read colName
	if grep -q $colName "$currLoc/$TBname.meta"; then
           while grep -q $colName "$currDb/Meta_$table";
            do
            echo "Column name already exist"
            read colname
           done
          fi

done
}
#echo ${arr[@]} | tr ' ' ':' >>


showMenu(){


echo -e "\ntable Menu choices :  "

echo "----------------"
sleep 0.2
echo "1: Create Table"
echo "2: List all Tables"
echo "3: Drop a Table"
echo "4: Alter a Table"
echo "5: Use a Table"
echo "----------------"

sleep 2
echo "Please select a choice : "

read  num

if [[ "$num" == "1" ]]; then
        echo "creating Table"
        sleep 0.01
	creatTB 
elif [[ "$num" == "2" ]]; then
	echo "listing all tables"

elif [[ "$num" == "3" ]]; then
	echo "droping a table"
	
elif [[ "$num" == "4" ]]; then 
	echo "altering a table"
elif [[ "$num" == "5" ]]; then
	echo "using a table"
else
    echo "exit"
fi



}

showMenu
