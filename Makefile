all: c a m u
c:
	rm -rf *.o *.0
a:
	clang -fsanitize=address main.c c25519.c f25519.c && ./a.out
m:
	clang -fsanitize=memory main.c c25519.c f25519.c && ./a.out
u:
	clang -fsanitize=undefined main.c c25519.c f25519.c && ./a.out
