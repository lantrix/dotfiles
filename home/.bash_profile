echo "Loading bash profile scripts"
number_of_files=$(ls $HOME/.bash_profile.d/*.sh 2>/dev/null |wc -l)
processed=0
files=$(ls $HOME/.bash_profile.d/*.sh 2>/dev/null)
if [[ `uname` -eq 'Darwin' ]]; then
  for file in ${files}; do
    processed=$(expr $processed + 1)
    # echo -en "\rProcessed ${processed}/${number_of_files}"
    source ${file}
  done
  # echo -e "\rComplete"
else
  for file in ${files}; do
    source ${file}
  done
fi
