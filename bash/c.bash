c() {
  if [ $# == 1 ]
  then
    cd "$PROJECTS/$1" || echo "error: could not go to ${$PROJECTS/$1}";
  elif [ $# == 0 ]
  then
    cd "$PROJECTS" || echo "error: no location $PROJECTS";
  else
    echo "c only takes one argument, for which folder in $PROJECTS to go to";
  fi
}
