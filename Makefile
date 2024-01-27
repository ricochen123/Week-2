# This is the general target for building everything.
# It points to the final product, your binary executable.
all: lab2-main.exe

# This is the main rule to *link* the compiled object file
# into a binary executable program.  The target is the
# executable, the dependency is the object file.
lab2-main.exe: lab2-main.o
	g++ -o lab2-main.exe  lab2-main.o


# This is the main rule to *compile* the source file
# into an object file.  The target is the object file,
# the dependency is the source file.
lab2-main.o: lab2-main.cc
	g++ -c lab2-main.cc


# These last two targets all you to easily clean up a build
# buy deleting any target files no longer needed.  One is
# for Mac OS and Linux, the other is for Windows.
clean:
	rm -f *.o *.exe

cleanwin:
	del *.o
	del *.exe
