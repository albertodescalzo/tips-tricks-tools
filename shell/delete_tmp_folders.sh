# Use find to search for directories containing "_tmp" in their name
find . -type d -name "*_tmp*" -print0 | while IFS= read -r -d '' folder_path; do
    if [ -d "$folder_path" ]; then
        rm -r "$folder_path"
        echo "Folder '$folder_path' has been removed."
    else
        echo "Folder '$folder_path' does not exist."
    fi
done
