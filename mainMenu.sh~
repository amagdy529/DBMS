#!/usr/bin/ksh

dirUrl="/home/ahmed/Desktop/ShellScripting/DBMS"

creatDB(){
	
echo "enter the name of the DB please : "
read name
mkdir $name
sleep 0.01
echo "DataBase Created !"
showMenu
}


useDB(){
echo "enter the name of the database you want to use :"
read name 
cd $name
sleep 0.01
echo "you are now using " $name "Database .. pls hold on"
sleep 2
./../tableMenu.sh
}

showDB(){
#dirUrl="/home/ahmed/Desktop/ShellScripting/DBMS"
#ls -d $dirUrl */
#ls -l | grep '^d' 
#ls -d $dirUrl*/
ls -l $dirUrl  | egrep "^d" | awk -F" " '{print $9}' 
echo "going back to main menu now .. hold on "
sleep 3.5 
showMenu

}


dropDB(){

echo "enter the name of the database you want to Drop :"
read name 
if [[ -d $name ]]; then
	rm -r $name
	echo "you removed " $name "Database"
	echo "the list of the DB that you have now are"
	showDB

else
	echo "DB doesn't exist"
	sleep 1.5
fi

echo "going back to main menu now .. hold on "
sleep 3.5 
showMenu

}

showMenu(){


echo -e "\nDB 7amada managment system  "

echo "----------------"
sleep 0.3
echo "1: Create Database"
echo "2: Use Database"
echo "3: Show all Databases"
echo "4: Drop a DataBase"
echo "----------------"

sleep 2
echo "Please select a choice : "

read  num

if [[ "$num" == "1" ]]; then
        echo "creating DB"
        sleep 0.01
	creatDB 
elif [[ "$num" == "2" ]]; then
	useDB

elif [[ "$num" == "3" ]]; then
	echo "showing all databases"
	showDB
elif [[ "$num" == "4" ]];	then 
	dropDB
else
    echo "exit"
fi



}

showMenu


