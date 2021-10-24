#!/usr/bin/env python3

# opcodes:
# \x41 = 'A'
# \x90 = no-op

print("\x41" * 42 + "\x90" * 10 + "\x41" * 42)
