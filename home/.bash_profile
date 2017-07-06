echo "Loading bash profile scripts"
number_of_files=$(ls $HOME/.bash_profile.d/private/*.sh $HOME/.bash_profile.d/*.sh 2>/dev/null |wc -l)
processed=0
files=$(ls $HOME/.bash_profile.d/private/*.sh $HOME/.bash_profile.d/*.sh 2>/dev/null)
for file in ${files}; do
  processed=$(expr $processed + 1)
  echo -en "\rProcessed ${processed}/${number_of_files}"
  source ${file}
done
echo -e "\rComplete"
