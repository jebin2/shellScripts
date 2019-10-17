echo Enter your Project Name:
project_name=""
while [ "$project_name" != ":wq" ]
do
  read project_name
  FILE=$HOME/eclipse/ZIDE/deployment/$project_name/AdventNet/Sas/tomcat/webapps/$project_name/WEB-INF/web.xml
  if [ -f "$FILE" ]; then
    atom $FILE
    project_name=":wq"
  else
    echo "No such project exists. to exit :wq"
  fi
done
