#include <stdio.h>
#include <stdint.h>
#include "c25519.h"
#include "edsign.h"

void x25519(void) {
	uint8_t k[32] = {9};
	uint8_t u[32] = {123};
	uint8_t r[32];

	c25519_prepare(u);
	c25519_smult(r, k, u);
}

void ed25519(void) {
    uint8_t k[32] = {123};
    uint8_t p[32];
    uint8_t m[32] = {123};
    uint8_t s[64];

    edsign_sec_to_pub(p, k);
    edsign_sign  (s, p, k, m, 32);
    edsign_verify(s, p,    m, 32);
}

int main() {
    x25519();
    ed25519();
	return 0;

}
