#! /bin/bash

echo -n "Enter the name of the folder: "
read folderName

if [ -d "$folderName" ];
then
    echo "Deleting all sub folders of size 0 ..."
        for folder in `find $folderName -type d -empty`
        do
            rmdir $folder
        done
else
    echo "Folder does not exist"
fi
