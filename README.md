# BuffOverflow

## How to Buffer Overflow Exploit
1. Compile c code with vulnerable strcpy function, use `gcc -g -o Buffo.c buffo.c -m64 (-mpreferred-stack-boundary=2)` to compile in 64 bit (or 32bits, depending on your OS) and generate debugging information.

2. Use gdb (linux command line debugger). `gdb Buffo.c` = start gdb and load Buffo.c program

when in gdb, you can run these commands:

`list` = display the code

`disas main` = disassemble a function (main in this case)

`run $(cmd)` = run a command in the gdb debugger, for example:

`run $(python3 -c 'print "\x41" * 10')`, will print the 'A' char, 10 times, and load that as parameter for our vulnerable C program.

`x/100x $sp-200` = Reads a block of memory, of 100 bytes in hex format, $sp-200 -> will read memory from the stackpointer position, offset by -200 bytes.

`info registers` = display info about the current memory registers

4. `nasm`, Assembler, commands:

`nasm -f elf shellcode.asm`
Assemble Assembly into a Executable and linkable Format (ELF), (shellcode.o)

5. Disassemble this file with `objdump`, we then get the shellcode bytes.

6. Extract the shellcode bytes, and put them in 1 string.
