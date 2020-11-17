#! /bin/bash
count=0
sum=0
while read line
do  
    count=$(( count+1 ))
    words=( $line )
    #echo ${#words[1]} count of words of each line
    three=${words[2]}
    if(( $count>= 98 && $count<=427 ))
    then
        sum=$(( ((10#$sum))+((10#$three))))
    fi

done < "${1:-/dev/stdin}"
echo $sum
