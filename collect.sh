#!/bin/bash

# Function to traverse directories recursively
traverse_directory() {
    source_directory="$1"
    destination_directory="$2"

    # Iterate over files and directories in the current directory
    for file in "$source_directory"/*; do
        if [[ -d "$file" ]]; then
            # If the current item is a directory, recursively call the function
            traverse_directory "$file" "$destination_directory"

        elif [[ -f "$file" ]]; then
            # If the current item is a file, check if it ends with ".tex"
            if [[ "$file" == *.pdf ]]; then
                # dir_path = $(dirname "$file")
                # file_name = $(basename "$file")

                # echo "$file"

                file_type=$(echo $file | cut -d/ -f 3)
                date=$(echo $file | cut -d/ -f 4)

                # echo $file_type $date

                new_filename="resume_${file_type}_Ding_Yang_${date}.pdf"

                # echo $new_filename

                cp "$file" "$destination_directory/$new_filename"
                # Move the file to the destination directory

                echo "Copied: $file -> $destination_directory/$new_filename"
            fi
        fi
    done
}

# Start traversing the specified source directory
source_directory="./"
destination_directory="./pdf"
traverse_directory "$source_directory" "$destination_directory"