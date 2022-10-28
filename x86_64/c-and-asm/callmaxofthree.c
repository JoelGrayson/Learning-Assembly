#include <stdio.h>
#include <inttypes.h>

int64_t maxofthree(int64_t, int64_t, int64_t); //explicit type declaration

int main() {
	printf("%ld\n", maxofthree(1, -4, -7));
	printf("%ld\n", maxofthree(13, -3, 9));
	return 0;
}

