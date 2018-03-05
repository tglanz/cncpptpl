nothing:
	@echo Doing nothing

app: src/main.cpp src/testFuncs.cpp
	@echo Compiling
	g++ -o bin/app.exe src/main.cpp src/testFuncs.cpp -I include
	