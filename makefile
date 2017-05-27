CC=gcc

OPTS=-DNDEBUG -g -fwrapv -O2 -Wall -Wstrict-prototypes
LDFLAGS=-L/usr/lib/python2.7/config-x86_64-linux-gnu -L/usr/lib -lpython2.7
CFLAGS=-I/usr/include/python2.7 -I/usr/include/x86_64-linux-gnu/python2.7

app: wrapper.c app.c
	$(CC) -o ./build/linux/wrapper wrapper.c app.c $(CFLAGS) $(LDFLAGS) $(OPTS)

prepare:
	bash -c "mkdir -p build/{windows,linux}" | :

clean:
	rm -r ./build/* | :