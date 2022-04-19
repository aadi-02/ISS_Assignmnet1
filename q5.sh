read Word;
echo $Word | rev

revstr=`echo $Word | rev`
echo $revstr | tr 'a-zA-Z' 'b-zaB-ZA'

strlen=${#Word}
revlen=$((strlen/2))
echo "${revstr:$revlen:$strlen}${Word:$revlen:$strlen}"
