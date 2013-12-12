all:
	mkdir -p lib obj bin
	gcc -c src/render.c
	ar rc lib/librender.a render.o
	ghc -outputdir obj -lrender -L./lib -isrc --make -o bin/Game src/Game
	rm render.o
