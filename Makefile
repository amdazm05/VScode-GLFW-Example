CC=gcc
CFLAGS=-I.

glmake: 
	g++ ./glad/glad.c -c
	g++ -Iinclude -Iglad  main.cpp -o test.exe  lib/libglfw3.a .\glad.o -lgdi32 -lopengl32 
clean:
	rm test.exe
	rm glad.o
