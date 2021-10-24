.PHONY = compile clear

compile:
	gcc -o Buffo.out -O3 buffo.c
	
clean:
	rm -f Buffo.out

run:
	./Buffo.out `./evilstr.py`
