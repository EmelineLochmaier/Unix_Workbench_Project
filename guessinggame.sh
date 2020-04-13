echo "Let's play a game.... How many files are in this repository?"

read $1

file_count=git ls-files | wc -l

while [[ $1 -ne $file_count ]] 
do
	if [[ $1 gt $file_count ]]
	then
		echo "Nope. Too large. Try again."
		echo "How many files are in this repository?"
		read $1
	fi
	if [[ $1 lt $file_count ]]
	then
		echo "Nope. Too small. Try again."
		echo "How many files are in this repository?"
		read $1
	fi
done

if [[ $1 -eq $file_count ]]
then
	echo "Congrats you survived!"
fi
