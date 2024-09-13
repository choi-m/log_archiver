

echo "enter a valid directory" 
    read -p "directory: " VALUE
    if [[ -d $VALUE ]]; then 
        FILE_NAME = "Compressed_Files" 
        tar cfvz [$FILE_NAME] $VALUE 
        FILE_LIST = "$VALUE/FILE_NAME" 
    