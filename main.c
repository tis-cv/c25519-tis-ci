#include <stdio.h>
#include <stdint.h>
#include "c25519.h"

void x25519(void) {
	uint8_t k[32] = {9};
	uint8_t u[32] = {123};
	uint8_t r[32];

	c25519_prepare(u);
	c25519_smult(r, k, u);
}

int main() {
    x25519();
	return 0;

}
