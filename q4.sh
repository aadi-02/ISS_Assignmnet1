#!/bin/bash
data=$(<in.txt)
IFS=','
 read -ra datanew <<< "$data"
strlen=${#datanew[@]}
strlen=$(($strlen-1))
for ((i=0; i<$strlen; i++))
do 
    for((j=0; j<=$strlen-$i-1; j++))
    do 
        if [[ ${datanew[j]} -gt ${datanew[$((j+1))]} ]]
        then
            temp=${datanew[j]}
            datanew[$j]=${datanew[$((j+1))]}  
            datanew[$((j+1))]=$temp
        fi
    done
done
echo ${datanew[@]}
