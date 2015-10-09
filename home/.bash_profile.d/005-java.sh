#Mac set Java Home
if [[ -f /usr/libexec/java_home ]]; then
	[[ $(/usr/libexec/java_home -v 1.8) == *jdk* ]] && export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
fi
