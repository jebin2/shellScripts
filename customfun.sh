set-title(){
  ORIG=$PS1
  if [[ "$@" != "" ]]; then
     TITLE="\e]2;$@\a"
  else
     TITLE="\e]2;${PWD##*/}\a"
  fi
  PS1=${ORIG}${TITLE}
}
