#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
    cd $DIR

    echo "Welcome to Wizo Database Management System"
while [ true ]; 
do
    select mainchoice in 'Create DataBase' 'Connect to DB' 'List DBs' 'Drop DB' 'Exit'
    do
        case $REPLY in
            1) 
                read -p "Enter new Database name : " DBname
                mkdir ../DBs/$DBname
                echo 'DataBase created successfully'
                read -p "press anykey to back ... " x
                break
            ;;
            2) echo 'Enter Database name to connect : '
                read DBname
                cd ../DBs

                 if [ -d "$DBname" ]; then
                    cd ./$DBname
                    export $DBname
                    . ../../dbconfig/db.sh
                    echo connected successfully
                else
                    echo "invalid db name"
                read -p "press anykey to back .... " x

               fi
                break
                ;;
            3)  ls -1 ../DBs/
                read -p "press anykey to back .... " x

                break
                ;;
            4)  read -p "Enter Database name you wish to delete : " DBname
                cd ../DBs
		       if [ -d "$DBname" ]; then
                   rm -r ../DBs/$DBname
                   echo deleted successfully
                else
                    echo "invalid db name"
               fi
               cd ../dbconfig
                read -p "press anykey to back .... " x
                break
                ;;
                

            5)  break 2 ;;

            *)  echo " Invalid Entry !!  Please Try Again"
            read -p "press anykey to back" x
        
		    break ;;
        esac
    done
done