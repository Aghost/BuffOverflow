.PHONY = compile clear

compile:
	gcc -g -o Buffo.out buffo.c -m64
	#gcc -fno-stack-protector -z execstack buffo.c -o Buffo.out
	#gcc -o Buffo.out -O3 buffo.c
	
clean:
	rm -f Buffo.out

run:
	./Buffo.out `./generate_shellcode/evilstr.py 10`
