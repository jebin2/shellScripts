echo Enter your Project Name:
project_name=""
while [ "$project_name" != ":wq" ]
do
  read project_name
  DIRECTORY=$HOME/eclipse/ZIDE/deployment/$project_name/AdventNet/Sas/tomcat/webapps/$project_name/CRMClient/
  echo "$DIRECTORY"
  if [ -d "$DIRECTORY" ]; then
    cd "$DIRECTORY"
    #source ~/zoho/script/customfun.sh
    #set-title "lyte-build"
    sudo bower install --allow-root
    sudo lyte build --watch
    project_name=":wq"
  else
    echo "No such project exists. to exit :wq"
  fi
done
