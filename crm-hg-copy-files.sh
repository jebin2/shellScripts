output=$(hg st -m)
copy="cp"
space=" "
if [ "$output" != '' ]; then
  for i in $output; do
    #substring=$i #$(echo $i | cut -c 1-)
    if [ "$i" != 'M' ]; then
      copy=$copy$space$i #do_something
    fi
  done
  echo "Enter the path to paste the diff files."
  directory_name=""
  while [ "$directory_name" != ":wq"]
  do
    read directory_name
    DIRECTORY=$HOME/$directory_name/
    if [ -d "$DIRECTORY" ]; then
      copy=$copy$space$DIRECTORY
      $copy
      directory_name=":wq"
    else
      echo "No such dirctory exists. to exit :wq"
    fi
  done
fi
#copy=$copy$space$HOME/testfol/
