#!/bin/bash

export PATH=$PATH:/assessment/question1.sh

COLUMNS=1

PS3="Select your option please: "

echo "* Bash Commands *"
select option in "List Files" "Show free disk space" "Show system path" "Display command history" "Backup files" "Exit"
do
   case $option in
      "List Files")
         echo "Files in Current Directory:"
         ls -1;;
      "Show free disk space")
         df;;
      "Show system path")
         echo "System Path:"
         echo $PATH;;
      "Display command history")
         history;;
      "Backup files")
         read -p "Please specify the directory:  " DIR
         mkdir BackupFolder
         cp -b -r $DIR BackupFolder
         echo "Contents of $DIR successfully copied to BackupFolder:"
         ls -1 BackupFolder/$DIR;;
      "Exit")
         echo "end"
         break;;
      *)
           echo "Please choose a valid option";;
   esac
done