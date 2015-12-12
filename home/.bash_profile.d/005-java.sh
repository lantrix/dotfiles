java_version=1.8

#Mac set Java Home
if [[ -f /usr/libexec/java_home ]]; then
	output=`/usr/libexec/java_home -v $java_version 2>&1`
	if [ $? -eq 0 ]; then
		[[ $(/usr/libexec/java_home -v $java_version) == *jdk* ]] && export JAVA_HOME=$(/usr/libexec/java_home -v $java_version)
	fi
fi
