project_name=$1
while [ "$project_name" != ":wq" ]
do
  #read project_name
  DIRECTORY=$HOME/eclipse/ZIDE/$project_name/build/crmtools
  if [ -d "$DIRECTORY" ]; then
    echo "$HOME/eclipse/ZIDE/$project_name/build/crmtools/generate_featureI18njs.sh $HOME/eclipse/ZIDE/deployment/$project_name/AdventNet/Sas/tomcat/webapps/$project_name" | xclip -selection clipboard
    sh $HOME/eclipse/ZIDE/$project_name/build/crmtools/generate_featureI18njs.sh $HOME/eclipse/ZIDE/deployment/$project_name/AdventNet/Sas/tomcat/webapps/$project_name
    project_name=":wq"
  else
    echo "No such project exists. to exit :wq"
    echo Enter your Project Name:
    read project_name
  fi
done
