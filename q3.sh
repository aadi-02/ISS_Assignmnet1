cat Test.txt | wc | awk '{print $3}'

cat Test.txt | wc -l 

cat Test.txt | wc -w

awk '$0="Line No:"NR" - Count of Words:"NF' Test.txt

cat Test.txt |tr ' ' '\n' | sort | uniq -c | awk '{print $2 " - " $1}' 
