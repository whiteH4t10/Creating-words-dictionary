#!/bin/bash

if  [ $1 ] && [ $2 ]; then

	rm diccionario_8_caracteres.txt
	declare -r diccionario=$1
	declare -r lenght_word=$2

	while read -r line
	do
	echo -ne "[+] $line\n"
		if [ ${#line} == $lenght_word ]; then
			echo -ne "[+] $line\n"
			echo $line >> diccionario_8_caracteres.txt
		fi
	done < $diccionario
else
	echo -e "[+] Uso: ./extractWords.sh <diccionary_file> <length_word>\n"
fi


