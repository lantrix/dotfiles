echo "Loading bash profile scripts"
number_of_files=$(ls $HOME/.bash_profile.d/*.sh 2>/dev/null |wc -l | tr -d ' ')
processed=0
files=$(ls $HOME/.bash_profile.d/*.sh 2>/dev/null | sort)

if [ "$number_of_files" -gt 0 ]; then
  # Create initial empty progress bar
  bar_length=$number_of_files
  echo -n "["
  for ((i=0; i<bar_length; i++)); do
    echo -n "."
  done
  echo -n "]"
  
  for file in ${files}; do
    processed=$((processed + 1))
    # Move cursor back and update progress bar
    echo -en "\r["
    for ((i=0; i<processed; i++)); do
      echo -n "#"
    done
    for ((i=processed; i<bar_length; i++)); do
      echo -n "."
    done
    echo -n "]"
    source "${file}"
  done
  echo ""
else
  echo "No bash profile scripts found"
fi
