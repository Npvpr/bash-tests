# [[ ${a} =~ ([a-z]+\.wav$) ]] && echo ${BASH_REMATCH[1]}
# You have to be inside the directory, or you will need to write longer directory names 2 times after mv
# But It's not essential, you can change any directory

for file in *
do
	[[ ${file} =~ ([a-z]+\.wav$) ]]
	mv "${file}" "${BASH_REMATCH[1]}"
done