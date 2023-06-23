all: clean test

appTests: test/tests.cpp student.cpp
	g++ -Wall --std=c++17 test/tests.cpp test/catch_amalgamated.cpp student.cpp -o build/appTests

test: appTests
	# executes all tests
	./build/appTests

clean:
	rm -f build/appTests
	rm -f build/exercise
	rm -f build/dexercise
run:
	g++ *.cpp -o build/exercise
	clear
	./build/exercise
debug: 
	g++ *.cpp -g -o dexercise
	gdb dexercise
	rm -f dexercise
debugvs:
	g++ *.cpp -g -o build/dexercise
debugtest: 
	g++ -Wall --std=c++17 test/tests.cpp test/catch_amalgamated.cpp student.cpp -g -o build/dexercise
