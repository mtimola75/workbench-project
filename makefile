all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# Guessing Game Bash Script" >> README.md
	echo "Date created: <insert date>" >> README.md
	echo "Number of lines in guessinggame.sh: <insert lines>" >> README.md


clean:
	rm README.md
