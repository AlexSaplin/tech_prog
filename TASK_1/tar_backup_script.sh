#!/bin/bash

IFS=$'\n'

dir_name=$1
zip_name=$2
shift 2

files=()

for extension in $@; do
    files+=$(find . -name "*."$extension)
    files+=$'\n'
done

mkdir $dir_name

for file in $files; do
    basefile=$(basename -- "$file")

    if [[ -f $dir_name"/"$basefile ]]; then
            cnt=1
            
            filename="${basefile%.*}"
            extension="${basefile##*.}"
            
            while [[ -f $dir_name"/"$filename"("$cnt")."$extension ]]; do
                cnt=$(( $cnt+1 ))
            done
            
            basefile=$filename"("$cnt")."$extension
        fi
    
    cp $file $dir_name/$basefile
done

tar -czf $zip_name".tar.gz" $dir_name &> /dev/null

echo "done"
