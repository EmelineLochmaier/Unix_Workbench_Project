echo "Let's play a game.... How many files are in this repository?"
read response

file_count=$(git ls-files | wc -l)

function Guessing {
	if [[ $response -gt $file_count ]]
	then
		echo "Nope. Too large. Try again."
		echo "How many files are in this repository?"
		read response
	fi
	if [[ $response -lt $file_count ]]
	then
		echo "Nope. Too small. Try again."
		echo "How many files are in this repository?"
		read response
	fi
}

while [[ $response -ne $file_count ]]
do
	Guessing
done

if [[ $response -eq $file_count ]]
then
	echo "Congrats you survived!"
fi
