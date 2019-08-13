README.md:
	touch README.md
	echo "The title of the project is $$( basename `pwd`)" > README.md
	echo "Make was run at $$( date +"%T %m-%d") " >> README.md
	echo "The number of lines of code contained in guessinggame.sh is $$( wc -l guessinggame.sh | egrep -o "[0-9]+")" >> README.md
clean:
	rm README.md
