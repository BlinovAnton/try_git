objects = 1.s 1_vol.s 2.o 1.o 1_vol.o

all: $(objects) 3

1.s: 1.c
	gcc -Wall -O1 -S -o 1.s 1.c

1_vol.s: 1_vol.c
	gcc -Wall -O3 -S -o 1_vol.s 1_vol.c

2.o: 2.c
	gcc -Wall -c -o 2.o 2.c

1.o: 1.s
	gcc -Wall -c -o 1.o 1.s

3: 1.o 2.o
	gcc -Wall -o 3 1.o 2.o

test:
	sh test.sh

clean:
	rm *.s *.o 3