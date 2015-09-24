files=$(ls $HOME/.bash_profile.d/private/*.sh $HOME/.bash_profile.d/*.sh 2>/dev/null)
for file in ${files}; do
  source ${file}
done
