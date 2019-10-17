echo "Enter Directory Name"
directory_name=""
while [ "$directory_name" != ":wq" ]
do
  read directory_name
  DIRECTORY=$HOME"/"$directory_name
  if [ -d "$DIRECTORY" ]; then
    atom $DIRECTORY
    directory_name=":wq"
  else
    echo "No such dirctory exists. to exit :wq"
  fi
done

echo "Enter File Name"
file_name=""
while [ "$file_name" != ":wq" ]
do
  read file_name
  FILE=$HOME"/temp/"$file_name
  if [ -f "$FILE" ]; then
    atom $FILE
    file_name=":wq"
  else
    echo "No such file exists. to exit :wq"
  fi
done
