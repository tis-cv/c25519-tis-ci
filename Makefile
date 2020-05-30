all: c a m u
c:
	rm -rf *.o *.0
a:
	clang -fsanitize=address *.c && ./a.out
m:
	clang -fsanitize=memory *.c && ./a.out
u:
	clang -fsanitize=undefined *.c && ./a.out
