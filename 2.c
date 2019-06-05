#include <stdio.h>

extern int g;

int func (int a) {
	return a * g;
}
