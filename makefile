all: README.md

README.md:
	touch README.md
	echo "title" > README.md
	echo "the number of lines: " >> README.md
	cat ./guessinggame.sh | wc -l >> README.md
	date >> README.md

clean:
	rm README.md
