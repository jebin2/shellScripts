#echo Enter your Project Name:
project_name=$1
while [ "$project_name" != ":wq" ]
do
  #read project_name
  DIRECTORY=$HOME/eclipse/ZIDE/deployment/$project_name/AdventNet/Sas/logs
  if [ -d "$DIRECTORY" ]; then
    #set-title "crm-application logs"
    echo "tail -F $DIRECTORY/crm-application*" | xclip -selection clipboard
    tail -F $DIRECTORY/crm-application*
    project_name=":wq"
  else
    echo "No such project exists. to exit :wq"
    echo Enter your Project Name:
    read project_name
  fi
done
