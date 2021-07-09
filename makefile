all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# Guessing Game Bash Script" >> README.md
	echo "Date created: " >> README.md
	date >> README.md
	echo "Number of lines in guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
