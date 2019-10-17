#echo Enter your Project Name:
project_name=$1
while [ "$project_name" != ":wq" ]
do
  #read project_name
  DIRECTORY=$project_name
  if [ -d "$DIRECTORY" ]; then
    #set-title "crm-application logs"
    echo "du -hs $DIRECTORY" | xclip -selection clipboard
    du -hs $DIRECTORY
    project_name=":wq"
  else
    echo "No such project exists. to exit :wq"
    echo Enter your Project Name:
    read project_name
  fi
done
