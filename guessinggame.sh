echo "Let's play a game.... How many files are in this repository?"

read $1

filecount=git ls-files | wc -l

while [[ $1 -ne $filecount ]] 
do
	if [[ $1 gt $filecount ]]
	then
		echo "Nope. Too large. Try again."
		echo "How many files are in this repository?"
		read $1
	fi
	if [[ $1 lt $filecount ]]
	then
		echo "Nope. Too small. Try again."
		echo "How many files are in this repository?"
		read $1
	fi
done

if [[ $1 -eq $filecount ]]
then
	echo "Congrats you survived!"
fi
