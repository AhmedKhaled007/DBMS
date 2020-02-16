#!/bin/bash
echo "you are now connected to table $table in $DBname"

while [ true ];
do
    select choice in 'Insert in table' 'delete from table' 'Search in table' 'Show all data' 'back'; do
        case $REPLY in

        
            1)
            declare -a arr
            x=$(sed -n '1p' $table | wc -w)
            for ((i = 0; i < $x; i++)); do
                read -p "enter data in column number $i : " col
                arr+=($col)
            done
            echo "${arr[*]}" >>$table
            read -p "press anykey to back ... " x
            break
            ;;
        2)
            read -p "enter row number to delete : " num
            sed -i "$num d" $table
            read -p "press anykey to back ... " x
            break
            ;;
        3)
            read -p "search for word : " word
            sed -n "/$word/p" $table
            read -p "press anykey to back ... " x
            break
            ;;
        4)
            column -t $table
            read -p "press anykey to back ... " x
            break
            ;;
        5)
            . ../../dbconfig/db.sh

            ;;

        *)
            echo " Invalid Entry !!  Please Try Again"
            read -p "press anykey to back" x
            break
            ;;
        esac
    done
done
