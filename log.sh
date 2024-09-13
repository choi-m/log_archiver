#!/usr/bin/bash
# can be modified if the user has saved Bash to another directory.



# notes: 
# -e (does the file exist?)
# -f (is a file)
# -d (is a directory)



#Given the path to a certain directory, this script produces a compressed folder of all files in the given folder. It produces a text file stating the name and data type of the files. 

#features: use control flow structure to validate input and continually ask for input if the input given is not appropriate. Then offer options for handling different tasks, as this script offers 4 distinct methods. 

#could add some ways to organize; exlcude from a certain date to another date. 

TIME=$(date +%Y%m%d_%H%M%S)

VALUE=$1
#input, take the first argument, path.


while true; do
    read -p "Enter a directory or file path: " VALUE

    if [[ -d $VALUE ]]; then
        echo "$VALUE is a directory"

    
        FILE_LIST="$VALUE/filelist_$TIME.txt"
        echo "File list for $VALUE on $TIME" > "$FILE_LIST"
        echo "----------------------------------" >> "$FILE_LIST"
        for file in "$VALUE"/*; do
            if [[ -e $file ]]; then  
                echo "$(basename "$file") - $(file -b "$file")" >> "$FILE_LIST"
            fi
        done
        FILE_NAME="logs_archive_$TIME.tar.gz"
        echo "Creating archive: $FILE_NAME"
        tar cfzv "$FILE_NAME" "$VALUE"
        break  
    elif [[ -f $VALUE ]]; then
        echo "$VALUE is a file"
        echo "Invalid argument"
    else
        echo "$VALUE is not valid"
        echo "Invalid argument"
    fi
done

