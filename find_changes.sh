#!/bin/bash

find ./PyJ_Systems -iname "*.*" -exec md5sum {} \; | tr '[:upper:]' '[:lower:]' | sed 's/\.\/pyj_systems\///g' | cat > current_md5.txt

# Working in the new hashes
input="current_md5.txt"

while IFS= read -r line
do
    name=`echo "$line" | grep -ioh " [a-z0-9].*" | sed 's/ //g'`
    hash=`echo "$line" | grep -ioh "[a-z0-9]* " | sed 's/ //g'`

    printf "%-20s%s\n" "$name" "$hash" >> cmd5.txt

done < "$input"

sort cmd5.txt > current_md5.txt
rm cmd5.txt

# Working in the old hashes
cat old_md5.txt | tr '[:upper:]' '[:lower:]' > omd5.txt
cat omd5.txt > old_md5.txt
rm omd5.txt

input="old_md5.txt"

while IFS= read -r line
do
    name=`echo "$line" | grep -ioh " [a-z0-9].*" | sed 's/ //g'`
    hash=`echo "$line" | grep -ioh "[a-z0-9]* " | sed 's/ //g'`

    printf "%-20s%s\n" "$name" "$hash" >> omd5.txt

done < "$input"

sort omd5.txt > old_md5.txt
rm omd5.txt

# Showing the differences
diff current_md5.txt old_md5.txt
