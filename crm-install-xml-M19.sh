FILE=$HOME/eclipse/ZIDE/zide/deployment/zohocrm/M19/install.xml
if [ -f "$FILE" ]; then
  atom $FILE
else
  echo "No such project exists. to exit :wq"
fi
