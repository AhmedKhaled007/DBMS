#!/bin/bash
echo "you are now connected to $DBname"
while [ true ]; do
    
    select choice in 'Create Table' 'List tables' 'Conntect to Table' 'Delete Table' 'back to databases'
    do
        case $REPLY in
            1)  
                read -p 'Enter table name : ' table
                read -p "enter column number : " count
                export count
                declare -a arr
                touch $table
                for((i=0;i<$count;i++)); do
                    read -p "enter column $i name : " col
                    arr+=($col)
                done
                echo "${arr[*]}"  >> $table
                read -p "Created Successfully  press anykey to back ... " x
                break
            ;;
            2)  ls -1
                read -p "press anykey to back .... " x
            
            break
            ;;
            
            3)
                read -p "Enter table name to connect : " table
             if [[ -f "$table" ]]; then
                    export $table
                    . ../../dbconfig/tb.sh
                    echo connected successfully
                else
                    echo "invalid table name"
               fi 

                    ;;
            4)  
                read -p "Enter table name you wish yo delete : " table
                if [[ -f "$table" ]] ;
                then
                    mv ./$table ../../trashDB/
                    echo 'Deleted Successfully'
                else
                    echo 'wrong table name'
                fi
            ;;
            5)  . ../../dbconfig/main.sh
            ;;
            *)  echo " Invalid Entry !!  Please Try Again"
                read -p "press anykey to back .... " x
                
            break ;;
            
        esac
    done
done
