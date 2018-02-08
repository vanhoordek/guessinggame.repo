all: README.md

README.md:
	touch README.md
	echo "## Guessing Game" > README.md
	echo -n "The number of lines of code: " >> README.md
	cat ./guessinggame.sh | wc -l >> README.md
	echo -n "Date and time of running make: " >> README.md
	date -R >> README.md


clean:
	rm README.md
